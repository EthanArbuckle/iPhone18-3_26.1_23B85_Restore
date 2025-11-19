id PLPillContentItem.__allocating_init(text:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = MEMORY[0x1BFB209B0](a1, a2);

  v6 = [v4 initWithText_];

  return v6;
}

id PLPillContentItem.__allocating_init(text:style:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x1BFB209B0](a1, a2);

  v8 = [v6 initWithText:v7 style:a3];

  return v8;
}

id @nonobjc BNBannerSource.__allocating_init(for:forRequesterIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = MEMORY[0x1BFB209B0](a2, a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() bannerSourceForDestination:a1 forRequesterIdentifier:v4];

  return v5;
}

id MutedTalkerBannerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MutedTalkerBannerViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MutedTalkerBannerViewController.viewDidLoad()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillView;
  [*&v0[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillView] setAutoresizingMask_];
  v2 = *&v0[v1];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame_];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 addSubview_];
}

Swift::Void __swiftcall MutedTalkerBannerViewController.handleTap(_:)(UITapGestureRecognizer_optional *a1)
{
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v4 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  OUTLINED_FUNCTION_7_6(v5);
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  aBlock[2] = v6;
  aBlock[3] = &block_descriptor_63;
  v7 = _Block_copy(aBlock);
  v8 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_4_108();
  OUTLINED_FUNCTION_5_99();
  _Block_release(v7);

  v9 = OUTLINED_FUNCTION_9_71();
  v10(v9);
  v11 = OUTLINED_FUNCTION_8_78();
  v12(v11);
}

void *closure #1 in MutedTalkerBannerViewController.handleTap(_:)(void *a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_isMuted;
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x160))((*(a1 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_isMuted) & 1) == 0);
  *(a1 + v2) = (*(a1 + v2) & 1) == 0;
  result = (*((*v3 & *a1) + 0x140))(v4);
  if (result)
  {
    [result bannerDidGetTap];

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall MutedTalkerBannerViewController.updatePillView(isMuted:)(Swift::Bool isMuted)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillImageView;
  v5 = *(v1 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillImageView);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v6 = v5;
  if (isMuted)
  {
    v7 = OUTLINED_FUNCTION_6_82();
    v8 = 0xD000000000000021;
    v9 = ".portraitUpsideDown";
    v38 = 0xD00000000000002ELL;
    v39 = "_MUTED_TALKER_OFF";
  }

  else
  {
    v7 = @nonobjc UIImage.init(_systemName:)(0x6C6C69662E63696DLL, 0xE800000000000000);
    v9 = "rViewController.swift";
    v38 = 0xD00000000000002DLL;
    v39 = "_MUTED_TALKER_ON";
    v8 = 0xD000000000000020;
  }

  [v6 setImage_];

  v10 = *(v2 + v4);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemOrangeColor];
  [v12 setTintColor_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for PLPillContentItem);
  v14 = objc_opt_self();
  v15 = [v14 conversationKit];
  v16.super.isa = v15;
  v17 = OUTLINED_FUNCTION_17_0(v8, v9 | 0x8000000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974, v16);
  v19 = v18;

  v20 = PLPillContentItem.__allocating_init(text:)(v17, v19);
  v21 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewTitle;
  v22 = *(v2 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewTitle);
  *(v2 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewTitle) = v20;

  v23 = [v14 conversationKit];
  v24.super.isa = v23;
  v25 = OUTLINED_FUNCTION_17_0(v38, v39 | 0x8000000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974, v24);
  v27 = v26;

  v28 = PLPillContentItem.__allocating_init(text:style:)(v25, v27, 5);
  v29 = OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewSubtitle;
  v30 = *(v2 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewSubtitle);
  *(v2 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillViewSubtitle) = v28;

  v31 = *(v2 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1BC4BA930;
  v33 = *(v2 + v21);
  v34 = *(v2 + v29);
  *(v32 + 32) = v33;
  *(v32 + 40) = v34;
  v35 = v31;
  v36 = v33;
  v37 = v34;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v35 setCenterContentItems_];
}

Swift::Void __swiftcall MutedTalkerBannerViewController.showBanner()()
{
  v1 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v0[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_isMuted] = 1;
  if (((*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))() & 1) == 0)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
    v5 = [v4 UUIDString];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = &v1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_currentRequestID];
    *v9 = v6;
    v9[1] = v8;

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v10 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_20();
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    OUTLINED_FUNCTION_7_6(v11);
    OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
    aBlock[2] = v12;
    aBlock[3] = &block_descriptor_6_2;
    v13 = _Block_copy(aBlock);
    v14 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    OUTLINED_FUNCTION_4_108();
    OUTLINED_FUNCTION_5_99();
    _Block_release(v13);

    v15 = OUTLINED_FUNCTION_9_71();
    v16(v15);
    v17 = OUTLINED_FUNCTION_8_78();
    v18(v17);
  }
}

void closure #1 in MutedTalkerBannerViewController.showBanner()(char *a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = *&a1[OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_bannerSource];
  v23[0] = 0;
  v3 = [v2 layoutDescriptionWithError_];
  if (v3)
  {
    v4 = v3;
    v5 = v23[0];
    [v4 presentationSize];
    v7 = v6;
    v9 = v8;
    [v4 containerSize];
    [a1 preferredContentSizeWithPresentationSize:v7 containerSize:{v9, v10, v11}];
    [a1 setPreferredContentSize_];
    v23[0] = 0;
    if ([v2 postPresentable:a1 options:1 userInfo:0 error:v23])
    {
      v12 = v23[0];
      goto LABEL_11;
    }

    v15 = v23[0];
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v13 = v23[0];
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, &static Logger.conversationControls);
  v4 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1BBC58000, v4, v17, "MutedTalker: unable to post banner", v18, 2u);
    MEMORY[0x1BFB23DF0](v18, -1, -1);
  }

LABEL_11:
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, &static Logger.conversationControls);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1BBC58000, v20, v21, "MutedTalker: banner presented", v22, 2u);
    MEMORY[0x1BFB23DF0](v22, -1, -1);
  }
}

Swift::Void __swiftcall MutedTalkerBannerViewController.dismissBanner()()
{
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v3 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_20();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    OUTLINED_FUNCTION_7_6(v4);
    OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
    aBlock[2] = v5;
    aBlock[3] = &block_descriptor_12_2;
    v6 = _Block_copy(aBlock);
    v7 = v0;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    OUTLINED_FUNCTION_4_108();
    OUTLINED_FUNCTION_5_99();
    _Block_release(v6);

    v8 = OUTLINED_FUNCTION_9_71();
    v9(v8);
    v10 = OUTLINED_FUNCTION_8_78();
    v11(v10);
  }
}

void closure #1 in MutedTalkerBannerViewController.dismissBanner()(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_bannerSource);
  v2 = *(a1 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_currentRequestID);
  v3 = *(a1 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_currentRequestID + 8);

  v4 = MEMORY[0x1BFB209B0](0x727574206574756DLL, 0xEF66666F2064656ELL);
  v9[0] = 0;
  v5 = outlined bridged method (mbnnnnnn) of @objc BNBannerSource.revokePresentable(withRequestIdentifier:reason:animated:userInfo:)(v2, v3, v4, 1, 0, v9, v1);

  v6 = v9[0];
  if (v5)
  {
  }

  else
  {
    v7 = v6;
    v8 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t MutedTalkerBannerViewController.presentableWillDisappear(asBanner:withReason:)()
{
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x130))(0);
  v2 = *((*v1 & *v0) + 0x160);

  return v2(1);
}

id MutedTalkerBannerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id MutedTalkerBannerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MutedTalkerBannerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MutedTalkerBannerViewController.requestIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_currentRequestID);

  return v1;
}

CGSize __swiftcall MutedTalkerBannerViewController.preferredContentSize(withPresentationSize:containerSize:)(CGSize withPresentationSize, CGSize containerSize)
{
  [*(v2 + OBJC_IVAR____TtC15ConversationKit31MutedTalkerBannerViewController_pillView) systemLayoutSizeFittingSize_];
  result.height = v4;
  result.width = v3;
  return result;
}

id outlined bridged method (mbnnnnnn) of @objc BNBannerSource.revokePresentable(withRequestIdentifier:reason:animated:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = MEMORY[0x1BFB209B0]();

  v13 = [a7 revokePresentableWithRequestIdentifier:v12 reason:a3 animated:a4 & 1 userInfo:a5 error:a6];

  return v13;
}

uint64_t CarrierBundleSettings.__allocating_init()()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v0 = static OS_dispatch_queue.main.getter();
  v1 = [objc_allocWithZone(MEMORY[0x1E69650A0]) initWithQueue_];

  v2 = swift_allocObject();
  CarrierBundleSettings.init(ctClient:)(v1);
  return v2;
}

uint64_t static CarrierBundleSettings.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

id CarrierBundleSettings.ctClient.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21CarrierBundleSettings_ctClient;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CarrierBundleSettings.ctClient.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21CarrierBundleSettings_ctClient;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CarrierBundleSettings.__allocating_init(ctClient:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CarrierBundleSettings.init(ctClient:)(a1);
  return v2;
}

uint64_t CarrierBundleSettings.init(ctClient:)(uint64_t a1)
{
  Logger.init(subsystem:category:)();
  *(v1 + OBJC_IVAR____TtC15ConversationKit21CarrierBundleSettings_ctClient) = a1;
  return v1;
}

double CarrierBundleSettings.fetchCarrierBundleValue(for:context:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v7 = OBJC_IVAR____TtC15ConversationKit21CarrierBundleSettings_ctClient;
  swift_beginAccess();
  v8 = *(v3 + v7);
  specialized _arrayForceCast<A, B>(_:)(a1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v29[0] = 0;
  v10 = [v8 context:a2 getCarrierBundleValue:isa error:v29];

  v28 = v29[0];
  if (v10)
  {
    *(a3 + 24) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
    *a3 = v10;

    v11 = v28;
  }

  else
  {
    v13 = v29[0];
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();

    v15 = a2;
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      *v19 = 136315650;
      v21 = MEMORY[0x1BFB20D10](a1, MEMORY[0x1E69E6158]);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v29);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v15;
      *v20 = v15;
      *(v19 + 22) = 2080;
      swift_getErrorValue();
      v24 = v15;
      v25 = Error.localizedDescription.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v29);

      *(v19 + 24) = v27;
      _os_log_impl(&dword_1BBC58000, v17, v18, "Error while extracting carrier bundle value for key hierarchy: %s for subscription context: %@. Error - %s", v19, 0x20u);
      outlined destroy of NSObject?(v20);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    else
    {
    }

    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

id CarrierBundleSettings.subscription(for:)(uint64_t a1, unint64_t a2)
{
  v46[4] = *MEMORY[0x1E69E9840];
  v3 = OBJC_IVAR____TtC15ConversationKit21CarrierBundleSettings_ctClient;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v46[0] = 0;
  v5 = [v4 getSubscriptionInfoWithError_];
  v6 = v46[0];
  if (!v5)
  {
    v22 = v46[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v6;
  }

  v7 = v5;
  v8 = v46[0];
  v9 = outlined bridged method (ob) of @objc CTXPCServiceSubscriptionInfo.subscriptions.getter(v7);
  if (!v9)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v23, v24))
    {
LABEL_36:

      return 0;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1BBC58000, v23, v24, "Not able to fetch subscriptions active in device.", v25, 2u);
LABEL_35:
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    goto LABEL_36;
  }

  v10 = v9;
  v11 = specialized Array.count.getter(v9);
  if (!v11)
  {

    v14 = a2;
LABEL_27:

    v23 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v23, v26))
    {
      goto LABEL_36;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v14;
    v30 = v28;
    v46[0] = v28;
    *v27 = 136315138;
    if (v29)
    {
      v31 = a1;
    }

    else
    {
      v31 = 0;
    }

    if (v29)
    {
      v32 = v29;
    }

    else
    {
      v32 = 0xE000000000000000;
    }

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v46);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_1BBC58000, v23, v26, "Not able to find subscription context for SIM ID - %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    goto LABEL_35;
  }

  v12 = v11;
  v13 = 0;
  v14 = a2;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1BFB22010](v13, v10);
    }

    else
    {
      if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v15 = *(v10 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
    }

    v18 = outlined bridged method (pb) of @objc CTXPCServiceSubscriptionContext.labelID.getter(v15);
    if (v19)
    {
      break;
    }

    if (!v14)
    {
      goto LABEL_38;
    }

LABEL_21:
    ++v13;
    if (v17 == v12)
    {

      goto LABEL_27;
    }
  }

  if (!v14)
  {

    goto LABEL_21;
  }

  if (v18 != a1 || v19 != v14)
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_38;
    }

    v14 = a2;
    goto LABEL_21;
  }

LABEL_38:

  v6 = v16;

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v46[0] = v38;
    *v36 = 138412546;
    *(v36 + 4) = v6;
    *v37 = v6;
    *(v36 + 12) = 2080;
    if (a2)
    {
      v39 = a1;
    }

    else
    {
      v39 = 0;
    }

    if (a2)
    {
      v40 = a2;
    }

    else
    {
      v40 = 0xE000000000000000;
    }

    v41 = v6;

    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v46);

    *(v36 + 14) = v42;
    _os_log_impl(&dword_1BBC58000, v34, v35, "Found subscription context %@ for SIM ID %s", v36, 0x16u);
    outlined destroy of NSObject?(v37);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  return v6;
}

uint64_t CarrierBundleSettings.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21CarrierBundleSettings_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t CarrierBundleSettings.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21CarrierBundleSettings_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t outlined bridged method (ob) of @objc CTXPCServiceSubscriptionInfo.subscriptions.getter(void *a1)
{
  v2 = [a1 subscriptions];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CTXPCServiceSubscriptionContext);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc CTXPCServiceSubscriptionContext.labelID.getter(void *a1)
{
  v1 = [a1 labelID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t type metadata accessor for CarrierBundleSettings()
{
  result = type metadata singleton initialization cache for CarrierBundleSettings;
  if (!type metadata singleton initialization cache for CarrierBundleSettings)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CarrierBundleSettings()
{
  result = type metadata accessor for Logger();
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

uint64_t ParticipantMonogramView.ViewModel.init(participant:includeAudioVisualization:includeRingButton:titles:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  Participant.contactDetails.getter();
  *a8 = v18;
  *(a8 + 16) = v19;
  *(a8 + 32) = v20;
  *(a8 + 48) = v21;
  v16 = *(a1 + *(type metadata accessor for Participant(0) + 32));

  result = outlined destroy of Participant(a1);
  *(a8 + 56) = v16;
  *(a8 + 64) = a2;
  *(a8 + 65) = a3;
  *(a8 + 72) = a4;
  *(a8 + 80) = a5;
  *(a8 + 88) = a6;
  *(a8 + 96) = a7;
  return result;
}

BOOL static ParticipantMonogramView.ViewModel.== infix(_:_:)()
{
  Hasher.init(_seed:)();
  ParticipantMonogramView.ViewModel.hash(into:)(v2);
  v0 = Hasher._finalize()();
  Hasher.init(_seed:)();
  ParticipantMonogramView.ViewModel.hash(into:)(v2);
  return v0 == Hasher._finalize()();
}

uint64_t ParticipantMonogramView.ViewModel.participantContactDetails.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v5 = *(v1 + 4);
  v4 = *(v1 + 5);
  v6 = *(v1 + 6);
  v7 = *v1;
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  *(a1 + 48) = v6;
  v8 = v7;
}

__n128 ParticipantMonogramView.ViewModel.participantContactDetails.setter(__int128 *a1)
{
  v6 = a1[1];
  v7 = *a1;
  v5 = a1[2];
  v2 = *(a1 + 6);
  v3 = *v1;

  *v1 = v7;
  *(v1 + 16) = v6;
  result = v5;
  *(v1 + 32) = v5;
  *(v1 + 48) = v2;
  return result;
}

uint64_t ParticipantMonogramView.ViewModel.gradient.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t ParticipantMonogramView.ViewModel.titles.getter()
{
  v0 = OUTLINED_FUNCTION_7_77();
  outlined copy of (title: String, subtitle: String?)?(v0, v1);
  return OUTLINED_FUNCTION_7_77();
}

uint64_t ParticipantMonogramView.ViewModel.titles.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = outlined consume of (title: String, subtitle: String?)?(v4[9], v4[10]);
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = a3;
  v4[12] = a4;
  return result;
}

void ParticipantMonogramView.ringButton.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_ringButton);
  *(v1 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_ringButton) = a1;
}

uint64_t ParticipantMonogramView.isInRoster.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_isInRoster;
  OUTLINED_FUNCTION_4_5();
  return *(v0 + v1);
}

uint64_t key path getter for ParticipantMonogramView.isInRoster : ParticipantMonogramView@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_isInRoster;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id ParticipantMonogramView.isInRoster.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_isInRoster;
  OUTLINED_FUNCTION_6_0();
  v1[v3] = a1;
  return [v1 setNeedsLayout];
}

uint64_t ParticipantMonogramView.isInRoster.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

id ParticipantMonogramView.isInRoster.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

BOOL ParticipantMonogramView.shouldUseConcentricRadius.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (Features.isICUIRedesignEnabled.getter() & 1) != 0 && (*(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_localParticipant) & 1) != 0;
}

double ParticipantMonogramView.customCornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius;
  OUTLINED_FUNCTION_4_5();
  return *(v0 + v1);
}

double key path getter for ParticipantMonogramView.customCornerRadius : ParticipantMonogramView@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

id ParticipantMonogramView.customCornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius;
  OUTLINED_FUNCTION_6_0();
  *(v1 + v3) = a1;
  return ParticipantMonogramView.customCornerRadius.didset();
}

id ParticipantMonogramView.customCornerRadius.didset()
{
  result = ParticipantMonogramView.shouldUseConcentricRadius.getter();
  if ((result & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowClippingView);
    if (v2)
    {
      v3 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius;
      OUTLINED_FUNCTION_4_5();
      return [v2 _setContinuousCornerRadius_];
    }
  }

  return result;
}

uint64_t ParticipantMonogramView.customCornerRadius.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t ParticipantMonogramView.concentricCornerStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_concentricCornerStyle;
  OUTLINED_FUNCTION_4_5();
  v4 = type metadata accessor for _UICornerMaskingConfiguration();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t key path getter for ParticipantMonogramView.concentricCornerStyle : ParticipantMonogramView@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_concentricCornerStyle;
  swift_beginAccess();
  v5 = type metadata accessor for _UICornerMaskingConfiguration();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for ParticipantMonogramView.concentricCornerStyle : ParticipantMonogramView(uint64_t a1)
{
  v2 = type metadata accessor for _UICornerMaskingConfiguration();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return ParticipantMonogramView.concentricCornerStyle.setter(v5);
}

uint64_t ParticipantMonogramView.concentricCornerStyle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_concentricCornerStyle;
  swift_beginAccess();
  v4 = type metadata accessor for _UICornerMaskingConfiguration();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  ParticipantMonogramView.concentricCornerStyle.didset();
  return (*(v5 + 8))(a1, v4);
}

uint64_t ParticipantMonogramView.concentricCornerStyle.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  result = ParticipantMonogramView.shouldUseConcentricRadius.getter();
  if (result)
  {
    if (*(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowClippingView))
    {
      v5 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_concentricCornerStyle;
      swift_beginAccess();
      v6 = type metadata accessor for _UICornerMaskingConfiguration();
      (*(*(v6 - 8) + 16))(v3, v0 + v5, v6);
      __swift_storeEnumTagSinglePayload(v3, 0, 1, v6);
      return UIView.cornerMaskingConfiguration.setter();
    }
  }

  return result;
}

uint64_t ParticipantMonogramView.concentricCornerStyle.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t ParticipantMonogramView.customCornerRadius.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t key path getter for ParticipantMonogramView.delegate : ParticipantMonogramView@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for ParticipantMonogramView.delegate : ParticipantMonogramView(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t ParticipantMonogramView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ParticipantMonogramView.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_delegate;
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

uint64_t ParticipantMonogramView.participantMonogramViewLayout.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_participantMonogramViewLayout;
  OUTLINED_FUNCTION_6_0();
  *(v1 + v3) = a1;
}

char *ParticipantMonogramView.init(colorStyle:localParticipant:)(unsigned __int8 *a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *a1;
  v8 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_titleLabelContainer;
  type metadata accessor for ParticipantViewLabelContainerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v3[v8] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v10 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_subtitleLabelContainer;
  *&v3[v10] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_isInRoster] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius] = 0;
  static _UICornerMaskingConfiguration.unspecified.getter();
  *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_participantMonogramViewLayout] = 0;
  v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_localParticipant] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = (*static Defaults.shared + 336);
  v80 = *v11;
  if (((*v11)() & 1) != 0 || v7)
  {
    *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowClippingView] = 0;
    *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowView] = 0;
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v13 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowClippingView;
    *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowClippingView] = v12;
    if (v12)
    {
      v14 = objc_opt_self();
      v15 = v12;
      v16 = [v14 clearColor];
      [v15 setBackgroundColor_];

      if (*&v3[v13])
      {
        [*&v3[v13] setClipsToBounds_];
      }
    }

    v17 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV6DrawerO_Tt0g5(6);
    v18 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

    *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowView] = v18;
    if (v18)
    {
      [v18 setAlpha_];
    }
  }

  LOBYTE(v83[0]) = v7;
  v19 = objc_allocWithZone(type metadata accessor for AudioVisualizationView());
  *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_audioVisualizationView] = AudioVisualizationView.init(colorStyle:)(v83);
  LOBYTE(v83[0]) = v7;
  v20 = objc_allocWithZone(type metadata accessor for ParticipantContactView());
  *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_contactView] = ParticipantContactView.init(colorStyle:)(v83);
  v81 = v7;
  v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_colorStyle] = v7;
  v21 = [objc_opt_self() conversationKit];
  v85._object = 0xE000000000000000;
  v22.value._countAndFlagsBits = 0x61737265766E6F43;
  v22.value._object = 0xEF74694B6E6F6974;
  v23._object = 0x80000001BC50CAA0;
  v23._countAndFlagsBits = 0xD000000000000015;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v85._countAndFlagsBits = 0;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v85);

  v26 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  *&v3[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_ringButton] = v26;
  v84.receiver = v3;
  v84.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v84, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v28 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_ringButton;
  v29 = *&v27[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_ringButton];
  v83[3] = ObjectType;
  v83[0] = v27;
  v30 = v27;
  v31 = v29;
  UIButton.add(target:action:)(v83, sel_didTapRingButton);

  outlined destroy of Any?(v83);
  outlined bridged method (mbnnn) of @objc UIButton.setTitle(_:for:)(v25._countAndFlagsBits, v25._object, 0, *&v27[v28]);
  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x74747542676E6972, 0xEA00000000006E6FLL, *&v27[v28]);
  v32 = [*&v27[v28] titleLabel];
  if (v32)
  {
    v31 = v32;
    if (one-time initialization token for ringButton != -1)
    {
      swift_once();
    }

    [v31 setFont_];
  }

  v33 = *&v27[v28];
  OUTLINED_FUNCTION_3_116();
  if (!v34)
  {
    swift_once();
  }

  [v31 setBackgroundColor_];

  v35 = *&v27[v28];
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 whiteColor];
  [v37 setTitleColor:v38 forState:0];

  v79 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowView;
  v39 = *&v30[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowView];
  if (v39)
  {
    v40 = *&v30[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowClippingView];
    if (v40)
    {
      v41 = v39;
      v42 = v40;
      [v42 addSubview_];
      [v30 addSubview_];
    }
  }

  v43 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_titleLabelContainer;
  v44 = *&v30[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_titleLabelContainer];
  ParticipantViewLabelContainerView.isCentered.setter(0);

  v45 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_subtitleLabelContainer;
  v46 = *&v30[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_subtitleLabelContainer];
  ParticipantViewLabelContainerView.isCentered.setter(0);

  v82 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_audioVisualizationView;
  v47 = *&v30[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_audioVisualizationView];
  v48 = v30;
  [v48 addSubview_];
  OUTLINED_FUNCTION_10_63();
  v78 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_contactView;
  OUTLINED_FUNCTION_10_63();
  OUTLINED_FUNCTION_10_63();
  v49 = OUTLINED_FUNCTION_10_63();
  if ((v80)(v49))
  {
    if (one-time initialization token for background != -1)
    {
      swift_once();
    }

    v50 = static Colors.ParticipantViews.background;
  }

  else
  {
    v50 = [v36 clearColor];
  }

  v51 = v50;
  [v48 &selRef:v50 phoneNumberWithDigits:? countryCode:?];

  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000016, 0x80000001BC50CAC0, *&v30[v82]);
  OUTLINED_FUNCTION_6_83();
  v53 = v52;
  OUTLINED_FUNCTION_3_116();
  if (!v34)
  {
    swift_once();
  }

  [v51 setFont_];

  OUTLINED_FUNCTION_6_83();
  v55 = v54;
  OUTLINED_FUNCTION_3_116();
  if (!v34)
  {
    swift_once();
  }

  [v51 setFont_];

  OUTLINED_FUNCTION_6_83();
  if (v81)
  {
    v57 = v56;
    OUTLINED_FUNCTION_3_116();
    if (!v34)
    {
      swift_once();
    }

    v58 = static Colors.ParticipantViews.overlayContent;
    [v51 setTextColor_];

    [*(*&v30[v45] + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label) setTextColor_];
  }

  else
  {
    v59 = v56;
    OUTLINED_FUNCTION_3_116();
    if (!v34)
    {
      swift_once();
    }

    [v51 setTextColor_];

    OUTLINED_FUNCTION_6_83();
    v60 = one-time initialization token for subtitleLabel;
    v62 = v61;
    if (v60 != -1)
    {
      swift_once();
    }

    [v62 setTextColor_];
  }

  v63 = *&v30[v82];
  v64 = *&v48[v78];
  v65 = *&v30[v43];
  v66 = *&v30[v45];
  v67 = *&v30[v79];
  v68 = *&v27[v28];
  type metadata accessor for ParticipantMonogramViewLayout();
  swift_allocObject();
  v69 = v63;
  v70 = v64;
  v71 = v65;
  v72 = v66;
  v73 = v67;
  v74 = v68;
  v75 = ParticipantMonogramViewLayout.init(audioVisualizer:contactView:titleView:subtitleView:glowView:ringButton:)();
  v76 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_participantMonogramViewLayout;
  swift_beginAccess();
  *&v48[v76] = v75;

  return v48;
}

id ParticipantMonogramView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void ParticipantMonogramView.init()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_titleLabelContainer;
  type metadata accessor for ParticipantViewLabelContainerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v1) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_subtitleLabelContainer;
  *(v0 + v3) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_isInRoster) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius) = 0;
  static _UICornerMaskingConfiguration.unspecified.getter();
  OUTLINED_FUNCTION_5_100(OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_delegate);
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_participantMonogramViewLayout) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id ParticipantMonogramView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantMonogramView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_titleLabelContainer;
  type metadata accessor for ParticipantViewLabelContainerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v1) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_subtitleLabelContainer;
  *(v0 + v3) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_isInRoster) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius) = 0;
  static _UICornerMaskingConfiguration.unspecified.getter();
  OUTLINED_FUNCTION_5_100(OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_delegate);
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_participantMonogramViewLayout) = 0;
  OUTLINED_FUNCTION_2_120();
  __break(1u);
}

id ParticipantMonogramView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void ParticipantMonogramView.init(frame:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_titleLabelContainer;
  type metadata accessor for ParticipantViewLabelContainerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v1) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_subtitleLabelContainer;
  *(v0 + v3) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_isInRoster) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_customCornerRadius) = 0;
  static _UICornerMaskingConfiguration.unspecified.getter();
  OUTLINED_FUNCTION_5_100(OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_delegate);
  *(v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_participantMonogramViewLayout) = 0;
  OUTLINED_FUNCTION_2_120();
  __break(1u);
}

Swift::Void __swiftcall ParticipantMonogramView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  ParticipantMonogramView._layout()();
}

uint64_t ParticipantMonogramView._layout()()
{
  [v0 bounds];
  result = CGRectIsInfinite(v9);
  if ((result & 1) == 0)
  {
    [v0 bounds];
    result = CGRectIsEmpty(v10);
    if ((result & 1) == 0)
    {
      [v0 bounds];
      v3 = v2;
      v5 = v4;
      [*&v0[OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowClippingView] setFrame_];
      v6 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_participantMonogramViewLayout;
      result = swift_beginAccess();
      if (*&v0[v6])
      {
        v7 = OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_isInRoster;
        swift_beginAccess();
        v8 = v0[v7];

        v11.origin.x = 0.0;
        v11.origin.y = 0.0;
        v11.size.width = v3;
        v11.size.height = v5;
        ParticipantMonogramViewLayout.layout(in:inRoster:)(v11, v8);
      }
    }
  }

  return result;
}

uint64_t ParticipantMonogramView.didTapRingButton()()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ParticipantMonogramView.configure(with:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 16);
  v27 = *(a1 + 24);
  v28 = *(a1 + 8);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v29 = *(a1 + 64);
  v30 = *(a1 + 65);
  v25 = *(a1 + 72);
  v26 = *(a1 + 40);
  v24 = *(a1 + 88);
  v31 = *(a1 + 80);
  v32 = *(a1 + 96);
  v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_glowView);
  if (v8)
  {
    if (specialized Array.count.getter(v7))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v7 & 0xC000000000000001) == 0, v7);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFB22010](0, v7);
      }

      else
      {
        v9 = *(v7 + 32);
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    [v8 setTintColor_];
  }

  v11 = *(v2 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_audioVisualizationView);
  v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x90);

  v12(v13);

  ParticipantContactView.gradient.setter(v14);
  v33[0] = v3;
  v33[1] = v28;
  v33[2] = v4;
  v33[3] = v27;
  v33[4] = v5;
  v33[5] = v26;
  v33[6] = v6;
  v15 = v3;

  ParticipantContactView.contactDetails.setter(v33);
  if (v29)
  {
    v16 = [v11 setHidden_];
    (*((*MEMORY[0x1E69E7D40] & *v11) + 0xA0))(v16);
  }

  else
  {
    (*((*MEMORY[0x1E69E7D40] & *v11) + 0xA8))();
    [v11 setHidden_];
  }

  [*(v2 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_ringButton) setHidden_];
  v17 = *(v2 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_titleLabelContainer);
  ParticipantViewLabelContainerView.isCentered.setter(v30 ^ 1);
  v18 = *(v2 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_subtitleLabelContainer);
  ParticipantViewLabelContainerView.isCentered.setter(v30 ^ 1);
  if (v31)
  {
    v19 = *&v17[OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label];
    outlined bridged method (mbgnn) of @objc UILabel.text.setter(v25, v31, v19);

    [v17 setHidden_];
    if (v32)
    {
      v20 = *&v18[OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label];
      outlined bridged method (mbgnn) of @objc UILabel.text.setter(v24, v32, v20);

      v21 = HIBYTE(v32) & 0xF;
      if ((v32 & 0x2000000000000000) == 0)
      {
        v21 = v24 & 0xFFFFFFFFFFFFLL;
      }

      v22 = v21 == 0;
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 1;
    [v17 setHidden_];
  }

  [v18 setHidden_];
  [*&v17[OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label] sizeToFit];
  [*&v18[OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label] sizeToFit];

  return ParticipantMonogramView._layout()();
}

Swift::Void __swiftcall ParticipantMonogramView.updateAudioVisualization(with:)(Swift::Float with)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit23ParticipantMonogramView_audioVisualizationView);
  if (([v3 isHidden] & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x78))(with);
  }
}

id ParticipantMonogramView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int ParticipantMonogramView.ViewModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  ParticipantMonogramView.ViewModel.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t ParticipantMonogramView.ViewModel.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[7];
  v5 = *(v1 + 64);
  v10 = *(v1 + 65);
  v6 = v1[10];
  v9 = v1[12];
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  v7 = v3 && (String.count.getter() - 1) < 2;
  Hasher._combine(_:)(v7);
  specialized Array<A>.hash(into:)(a1, v4, specialized Array.count.getter, specialized Array.count.getter);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v10);
  if (v6)
  {

    Hasher._combine(_:)(1u);
    String.hash(into:)();

    if (v9)
    {
      Hasher._combine(_:)(1u);

      String.hash(into:)();
      goto LABEL_10;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(0);
LABEL_10:
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantMonogramView.ViewModel()
{
  Hasher.init(_seed:)();
  ParticipantMonogramView.ViewModel.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t outlined copy of (title: String, subtitle: String?)?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void specialized Array<A>.hash(into:)()
{
  OUTLINED_FUNCTION_9_72();
  if (v0)
  {
    v2 = (v1 + 64);
    do
    {
      v3 = *(v2 - 16);
      v4 = *(v2 - 1);
      v5 = *v2;

      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v4, v5);
      String.hash(into:)();
      MEMORY[0x1BFB22640](v3);
      Hasher._combine(_:)(v4 == 0);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
      v2 += 5;
      --v0;
    }

    while (v0);
  }
}

{
  OUTLINED_FUNCTION_9_72();
  if (v0)
  {
    v2 = (v1 + 40);
    do
    {
      v3 = *v2;
      MEMORY[0x1BFB22640](*(v2 - 1));
      MEMORY[0x1BFB22640](v3);
      v2 += 2;
      --v0;
    }

    while (v0);
  }
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v6 = a3(a2);
  MEMORY[0x1BFB22640](v6);
  v7 = a4(a2);
  if (v7)
  {
    v8 = v7;
    if (v7 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v8; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1BFB22010](i, a2);
        }

        else
        {
          v10 = *(a2 + 8 * i + 32);
        }

        v11 = v10;
        NSObject.hash(into:)();
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type ParticipantMonogramView.ViewModel and conformance ParticipantMonogramView.ViewModel()
{
  result = lazy protocol witness table cache variable for type ParticipantMonogramView.ViewModel and conformance ParticipantMonogramView.ViewModel;
  if (!lazy protocol witness table cache variable for type ParticipantMonogramView.ViewModel and conformance ParticipantMonogramView.ViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantMonogramView.ViewModel and conformance ParticipantMonogramView.ViewModel);
  }

  return result;
}

uint64_t type metadata accessor for ParticipantMonogramView()
{
  result = type metadata singleton initialization cache for ParticipantMonogramView;
  if (!type metadata singleton initialization cache for ParticipantMonogramView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ParticipantMonogramView()
{
  result = type metadata accessor for _UICornerMaskingConfiguration();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SS5title_SSSg8subtitletSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ParticipantMonogramView.ViewModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for ParticipantMonogramView.ViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ObservableNotificationHandler.init(name:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  ObservationRegistrar.init()();
  v7 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();
  v9 = a1;

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = v8;

  v13 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
  ObservableNotificationHandler.notificationTask.setter(v13);

  return v2;
}

uint64_t ObservableNotificationHandler.deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit29ObservableNotificationHandler___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t ObservableNotificationHandler.notificationTask.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  (*(v0 + 216))();
}

uint64_t ObservableNotificationHandler.notificationTask.setter(uint64_t a1)
{

  v4 = specialized ObservableNotificationHandler.shouldNotifyObservers<A>(_:_:)(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    v8 = v1;
    v9 = a1;
    (*(*v1 + 224))(v6);
  }

  else
  {
    v1[2] = a1;
  }
}

uint64_t ObservableNotificationHandler.trackingProperty.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  (*(v1 + 216))();

  return *(v0 + 24);
}

uint64_t ObservableNotificationHandler.trackingProperty.setter(uint64_t result)
{
  if (v1[24] == (result & 1))
  {
    v1[24] = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 224))(v3);
  }

  return result;
}

Swift::Void __swiftcall ObservableNotificationHandler.willReturnChangingValue()()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  (*(v0 + 216))();
}

uint64_t ObservableNotificationHandler.access<A>(keyPath:)()
{
  OUTLINED_FUNCTION_1_122();
  lazy protocol witness table accessor for type ObservableNotificationHandler and conformance ObservableNotificationHandler(v0, v1);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t ObservableNotificationHandler.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_1_122();
  lazy protocol witness table accessor for type ObservableNotificationHandler and conformance ObservableNotificationHandler(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

BOOL specialized ObservableNotificationHandler.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v3 = static Task.== infix(_:_:)();
  }

  return (v3 & 1) == 0;
}

uint64_t closure #1 in ObservableNotificationHandler.notificationTask.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
}

uint64_t ObservableNotificationHandler.__allocating_init(name:)(void *a1)
{
  v2 = swift_allocObject();
  ObservableNotificationHandler.init(name:)(a1);
  return v2;
}

uint64_t closure #1 in ObservableNotificationHandler.init(name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  v5[15] = swift_task_alloc();
  v6 = type metadata accessor for Notification();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVySo20NSNotificationCenterC10FoundationE13NotificationsCSS_GMd);
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVySo20NSNotificationCenterC10FoundationE13NotificationsCSSGMd);
  v5[24] = v8;
  v5[25] = *(v8 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = type metadata accessor for MainActor();
  v5[28] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[29] = v10;
  v5[30] = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in ObservableNotificationHandler.init(name:), v10, v9);
}

uint64_t closure #1 in ObservableNotificationHandler.init(name:)()
{
  v1 = v0[24];
  v2 = [objc_opt_self() defaultCenter];
  v3 = NSNotificationCenter.notifications(named:object:)();

  v0[11] = v3;
  type metadata accessor for NSNotificationCenter.Notifications();
  lazy protocol witness table accessor for type ObservableNotificationHandler and conformance ObservableNotificationHandler(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications and conformance NSNotificationCenter.Notifications, MEMORY[0x1E6969F08]);
  AsyncMapSequence.init(_:transform:)();
  MEMORY[0x1BFB221C0](v1);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.Iterator.transform.getter();
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v4 = static MainActor.shared.getter();
  v0[31] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = OUTLINED_FUNCTION_0_149(v7, v5);

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  v1 = v0[31];
  v0[34] = AsyncMapSequence.Iterator.baseIterator.modify();
  lazy protocol witness table accessor for type ObservableNotificationHandler and conformance ObservableNotificationHandler(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator, MEMORY[0x1E6969EF8]);
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = closure #1 in ObservableNotificationHandler.init(name:);
  v3 = v0[15];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;
  *(v2 + 288) = v0;

  if (v0)
  {
    v4 = *(v2 + 256);
    v5 = *(v2 + 264);
    v6 = closure #1 in ObservableNotificationHandler.init(name:);
  }

  else
  {
    (*(v2 + 272))();
    v4 = *(v2 + 256);
    v5 = *(v2 + 264);
    v6 = closure #1 in ObservableNotificationHandler.init(name:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

{
  v2 = v0[15];
  v1 = v0[16];
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {

    outlined destroy of Notification?(v2);
    v3 = v0[29];
    v4 = v0[30];

    return MEMORY[0x1EEE6DFA0](closure #1 in ObservableNotificationHandler.init(name:), v3, v4);
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v2, v1);
    v5 = AsyncMapSequence.Iterator.transform.getter();
    v0[37] = v6;
    v10 = (v5 + *v5);
    v7 = swift_task_alloc();
    v0[38] = v7;
    *v7 = v0;
    v7[1] = closure #1 in ObservableNotificationHandler.init(name:);
    v8 = v0[18];

    return (v10)(v0 + 9, v8);
  }
}

{
  return (*(v0 + 272))();
}

{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v5 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  v7 = *(v1 + 264);
  v8 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](closure #1 in ObservableNotificationHandler.init(name:), v8, v7);
}

{

  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return MEMORY[0x1EEE6DFA0](closure #1 in ObservableNotificationHandler.init(name:), v1, v2);
}

{
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_25_1();
    (*(v4 + 224))();

    v5 = static MainActor.shared.getter();
    *(v2 + 248) = v5;
    if (v5)
    {
      swift_getObjectType();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v12 = OUTLINED_FUNCTION_0_149(v5, v6, v7);

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_3_117();
    v9(v8);
    (*(v3 + 8))(v1, v0);

    v10 = *(v2 + 8);

    return v10();
  }
}

{

  v4 = OUTLINED_FUNCTION_3_117();
  v5(v4);
  (*(v3 + 8))(v1, v0);

  v6 = *(v2 + 8);

  return v6();
}

uint64_t partial apply for closure #1 in ObservableNotificationHandler.init(name:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in ObservableNotificationHandler.init(name:);

  return closure #1 in ObservableNotificationHandler.init(name:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in ObservableNotificationHandler.init(name:)()
{
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t type metadata accessor for ObservableNotificationHandler()
{
  result = type metadata singleton initialization cache for ObservableNotificationHandler;
  if (!type metadata singleton initialization cache for ObservableNotificationHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in closure #1 in ObservableNotificationHandler.init(name:)()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  return (*(v0 + 8))();
}

uint64_t ObservableNotificationHandler.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit29ObservableNotificationHandler___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for ObservableNotificationHandler()
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

uint64_t lazy protocol witness table accessor for type ObservableNotificationHandler and conformance ObservableNotificationHandler(unint64_t *a1, void (*a2)(uint64_t))
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

CABasicAnimation __swiftcall CABasicAnimation.animationCopy()()
{
  [v0 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CABasicAnimation();
  if (swift_dynamicCast())
  {
    [v4 setDelegate_];
    v3 = v4;
  }

  else
  {
    v3 = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result.super.super._attr = v1;
  result.super.super.super.isa = v3;
  result.super.super._flags = v2;
  return result;
}

unint64_t type metadata accessor for CABasicAnimation()
{
  result = lazy cache variable for type metadata for CABasicAnimation;
  if (!lazy cache variable for type metadata for CABasicAnimation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CABasicAnimation);
  }

  return result;
}

uint64_t PreCallStatusViewModel.statusView.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PreCallStatusViewModel.statusView.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return CancelConfirmationViewModel.delegate.modify;
}

uint64_t PreCallStatusViewModel.__allocating_init(preCallContextProvider:)(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

Swift::Void __swiftcall PreCallStatusViewModel.startObservation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit22PreCallControlsContextOSgs5NeverOGSo9NSRunLoopCGMd);
  v6 = *(v5 - 8);
  v17 = v5;
  v18 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1((v0 + 32), *(v0 + 56));
  v9 = OUTLINED_FUNCTION_77();
  v16 = v10(v9);
  v20 = v16;
  v11 = [objc_opt_self() mainRunLoop];
  v19 = v11;
  v12 = type metadata accessor for NSRunLoop.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit22PreCallControlsContextOSgs5NeverOGMd);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<PreCallControlsContext?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit22PreCallControlsContextOSgs5NeverOGMd);
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSRunLoop.SchedulerOptions?(v4);

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<PreCallControlsContext?, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit22PreCallControlsContextOSgs5NeverOGSo9NSRunLoopCGMd);
  v13 = v17;
  v14 = Publisher<>.sink(receiveValue:)();

  (*(v18 + 8))(v8, v13);
  *(v1 + 72) = v14;
}

void closure #1 in PreCallStatusViewModel.startObservation()(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v2 == 255)
    {
      PreCallStatusViewModel.clearStatus()();
    }

    else
    {
      outlined copy of PreCallControlsContext(v1);
      if (one-time initialization token for preCall != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, &static Logger.preCall);
      outlined copy of PreCallControlsContext(v1);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      outlined consume of PreCallControlsContext?(v1, v2);
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v11 = v7;
        v12 = v1;
        *v6 = 136315138;
        v13 = v2 & 1;
        outlined copy of PreCallControlsContext(v1);
        v8 = String.init<A>(reflecting:)();
        v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v11);

        *(v6 + 4) = v10;
        _os_log_impl(&dword_1BBC58000, v4, v5, "PreCallStatusViewModel: preCallContext: %s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v7);
        MEMORY[0x1BFB23DF0](v7, -1, -1);
        MEMORY[0x1BFB23DF0](v6, -1, -1);
      }

      v12 = v1;
      v13 = v2 & 1;
      PreCallStatusViewModel.updateStatus(preCallContext:)();

      outlined consume of PreCallControlsContext?(v1, v2);
    }
  }
}

Swift::Void __swiftcall PreCallStatusViewModel.clearStatus()()
{
  v1 = v0;
  if (one-time initialization token for preCall != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.preCall);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "PreCallStatusViewModel: clear status", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(1, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

void PreCallStatusViewModel.updateStatus(preCallContext:)()
{
  PreCallControlsContext.labels.getter(&v16);
  v2 = v1;
  v4 = v3;
  v6 = v16;
  v5 = v17;
  v8 = v18;
  v7 = v19;
  v9 = v20;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v16 = v6;
    v17 = v5;
    v18 = v8;
    v19 = v7;
    v20 = v9;
    (*(v10 + 40))(&v16, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v0 + 24);
    v13 = swift_getObjectType();
    (*(v12 + 32))(v2, v4, v13, v12);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v0 + 24);
    v15 = swift_getObjectType();
    (*(v14 + 16))(0, v15, v14);
    OUTLINED_FUNCTION_4_109();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_109();
  }
}

void PreCallControlsContext.labels.getter(uint64_t a1)
{
  v4 = *v1;
  if (*(v1 + 8))
  {
    v69 = *v1;
    v70 = 1;
    v5 = [v4 remoteMembers];
    v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
    OUTLINED_FUNCTION_0_150(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject);
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = specialized Set.count.getter(v7);
    if (v8)
    {
      v9 = v8;
      v68 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      v65 = specialized Set.startIndex.getter(v7);
      v66 = v10;
      v67 = v11 & 1;
      if (v9 < 0)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_123();
      while (1)
      {
        v12 = __OFADD__(v2++, 1);
        if (v12)
        {
          break;
        }

        v13 = v65;
        v14 = v66;
        v15 = v67;
        v16 = OUTLINED_FUNCTION_77();
        specialized Set.subscript.getter(v16, v17, v15, v7);
        v19 = v18;
        v20 = [v18 handle];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v21 = *(v68 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v22 = &v68;
        specialized ContiguousArray._endMutation()();
        if (v6)
        {
          if (!v15)
          {
            goto LABEL_64;
          }

          OUTLINED_FUNCTION_77();
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo20TUConversationMemberC_GMd);
          Set.Index._asCocoa.modify();
          OUTLINED_FUNCTION_9_73();
          (v21)(v64, 0);
        }

        else
        {
          if (v15)
          {
            goto LABEL_66;
          }

          if (v13 < 0)
          {
            goto LABEL_57;
          }

          OUTLINED_FUNCTION_6_84();
          if (v23 == v12)
          {
            goto LABEL_57;
          }

          OUTLINED_FUNCTION_5_101();
          if ((v24 & 1) == 0)
          {
            goto LABEL_59;
          }

          if (*(v7 + 36) != v14)
          {
            goto LABEL_60;
          }

          OUTLINED_FUNCTION_8_79();
          if (v25)
          {
            OUTLINED_FUNCTION_3_118();
            while (v27 < v26)
            {
              v30 = *v28++;
              v29 = v30;
              v22 += 8;
              ++v27;
              if (v30)
              {
                v31 = OUTLINED_FUNCTION_77();
                outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v31, v32, 0);
                v21 = (v22 + __clz(__rbit64(v29)));
                goto LABEL_24;
              }
            }

            v33 = OUTLINED_FUNCTION_77();
            outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v33, v34, 0);
          }

          else
          {
            OUTLINED_FUNCTION_7_78();
          }

LABEL_24:
          v35 = *(v7 + 36);
          v65 = v21;
          v66 = v35;
          v67 = 0;
        }

        if (v2 == v9)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }
  }

  else
  {
    v69 = *v1;
    v70 = 0;
    v36 = [v4 handles];
    v37 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    OUTLINED_FUNCTION_0_150(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject);
    v38 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = specialized Set.count.getter(v38);
    if (v39)
    {
      v40 = v39;
      v68 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      v65 = specialized Set.startIndex.getter(v38);
      v66 = v41;
      v67 = v42 & 1;
      if (v40 < 0)
      {
        goto LABEL_63;
      }

      OUTLINED_FUNCTION_1_123();
      while (1)
      {
        v12 = __OFADD__(v2++, 1);
        if (v12)
        {
          goto LABEL_55;
        }

        v43 = v65;
        v44 = v66;
        v45 = v67;
        v46 = OUTLINED_FUNCTION_77();
        specialized Set.subscript.getter(v46, v47, v45, v38);
        v49 = v48;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v50 = &v68;
        specialized ContiguousArray._endMutation()();
        if (v37)
        {
          if (!v45)
          {
            goto LABEL_65;
          }

          OUTLINED_FUNCTION_77();
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd);
          Set.Index._asCocoa.modify();
          OUTLINED_FUNCTION_9_73();
          (v49)(v64, 0);
        }

        else
        {
          if (v45)
          {
            goto LABEL_67;
          }

          if (v43 < 0)
          {
            goto LABEL_56;
          }

          OUTLINED_FUNCTION_6_84();
          if (v23 == v12)
          {
            goto LABEL_56;
          }

          OUTLINED_FUNCTION_5_101();
          if ((v51 & 1) == 0)
          {
            goto LABEL_58;
          }

          if (*(v38 + 36) != v44)
          {
            goto LABEL_61;
          }

          OUTLINED_FUNCTION_8_79();
          if (v25)
          {
            OUTLINED_FUNCTION_3_118();
            while (v53 < v52)
            {
              v56 = *v54++;
              v55 = v56;
              v50 += 8;
              ++v53;
              if (v56)
              {
                v57 = OUTLINED_FUNCTION_77();
                outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v57, v58, 0);
                v49 = (v50 + __clz(__rbit64(v55)));
                goto LABEL_49;
              }
            }

            v59 = OUTLINED_FUNCTION_77();
            outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v59, v60, 0);
          }

          else
          {
            OUTLINED_FUNCTION_7_78();
          }

LABEL_49:
          v61 = *(v38 + 36);
          v65 = v49;
          v66 = v61;
          v67 = 0;
        }

        if (v2 == v40)
        {
LABEL_51:

          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v65, v66, v67);
          v62 = v68;
          a1 = v63;
          goto LABEL_53;
        }
      }
    }
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_53:
  PreCallControlsContext.getLabel(from:)(a1, v62);
}

uint64_t PreCallStatusViewModel.deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return v0;
}

uint64_t PreCallStatusViewModel.__deallocating_deinit()
{
  PreCallStatusViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t PreCallControlsContext.getLabel(from:)(uint64_t a1, uint64_t a2)
{
  v51 = type metadata accessor for PersonNameComponents();
  v4 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultSettings];
  v8 = [objc_allocWithZone(MEMORY[0x1E695D0C8]) initWithSettings_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUContactsDataProviderFetchRequest);

  v10 = TUContactsDataProviderFetchRequest.__allocating_init(handles:isConversation:)(v9, 1);
  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 contactStore];

  v13 = [objc_allocWithZone(MEMORY[0x1E69D8B00]) initWithContactsDataSource_];
  v14 = [v13 executeFetchRequest_];

  v52 = a2;
  v15 = specialized Array.count.getter(a2);
  if (!v15)
  {
LABEL_18:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 setContacts_];

    v33 = [v14 localizedName];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    *a1 = [v8 view];
    *(a1 + 8) = vdupq_n_s64(0x4052000000000000uLL);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    v37._countAndFlagsBits = v34;
    v37._object = v36;
    v38 = NSAttributedString.__allocating_init(string:)(v37).super.isa;
    v39 = [objc_opt_self() conversationKit];
    v57._object = 0xE000000000000000;
    v40.value._countAndFlagsBits = 0x61737265766E6F43;
    v40.value._object = 0xEF74694B6E6F6974;
    v41._object = 0x80000001BC50CE30;
    v41._countAndFlagsBits = 0xD000000000000014;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v57._countAndFlagsBits = 0;
    v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v40, v39, v42, v57);

    NSAttributedString.__allocating_init(string:)(v43);
    return v38;
  }

  v16 = v15;
  v56 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v16 & 0x8000000000000000) == 0)
  {
    v44 = v14;
    v45 = v10;
    v46 = a1;
    v47 = v8;
    v18 = 0;
    v48 = (v4 + 8);
    v49 = v52 & 0xC000000000000001;
    v53 = v6;
    v50 = v16;
    do
    {
      if (v49)
      {
        v19 = MEMORY[0x1BFB22010](v18, v52);
      }

      else
      {
        v19 = *(v52 + 8 * v18 + 32);
      }

      v20 = one-time initialization token for faceTime;
      v21 = v19;
      if (v20 != -1)
      {
        swift_once();
      }

      ParticipantContactDetailsCache.contactDetails(for:nickname:)();
      v22 = v54;
      v23 = v54;

      PersonNameComponents.init()();
      if (v22)
      {
        v24 = [v23 givenName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        PersonNameComponents.givenName.setter();
        v25 = [v23 familyName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        PersonNameComponents.givenName.setter();
      }

      PersonNameComponents.familyName.setter();
      if (one-time initialization token for initials != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v26 = static NSPersonNameComponentsFormatter.initials;
      v27 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v28 = [v26 stringFromPersonNameComponents_];

      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      (*v48)(v53, v51);
      v54 = v29;
      v55 = v31;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.localizedUppercase.getter();

      if (!v22)
      {
        [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];
      }

      ++v18;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v50 != v18);
    a1 = v46;
    v8 = v47;
    v14 = v44;
    v10 = v45;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

id TUContactsDataProviderFetchRequest.__allocating_init(handles:isConversation:)(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithHandles:isa isConversation:a2 & 1];

  return v5;
}

uint64_t specialized PreCallStatusViewModel.__allocating_init(preCallContextProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v11 = specialized PreCallStatusViewModel.init(preCallContextProvider:)(v9, v10, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v11;
}

uint64_t specialized PreCallStatusViewModel.init(preCallContextProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 72) = 0;
  outlined init with take of TapInteractionHandler(&v9, a2 + 32);
  return a2;
}

void outlined consume of CallControlsStatusView.LeadingView(id a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v3, v4);
  }

  else
  {

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)();
  }
}

uint64_t key path getter for VideoMessageController.state : VideoMessageController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t VideoMessageController.state.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t VideoMessageController.$state.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_44_0();
  return v5(v4);
}

uint64_t VideoMessageController.mostRecentActiveConversation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_mostRecentActiveConversation;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + v3, a1, &_s15ConversationKit0A0_pSgMd);
}

uint64_t VideoMessageController.mostRecentActiveConversation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_mostRecentActiveConversation;
  OUTLINED_FUNCTION_30_2();
  outlined assign with take of Conversation?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of Conversation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t key path getter for VideoMessageController.mostRecentLocalHandle : VideoMessageController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

uint64_t key path setter for VideoMessageController.mostRecentLocalHandle : VideoMessageController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x140);
  v4 = *a1;
  return v3(v2);
}

void *VideoMessageController.mostRecentLocalHandle.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_mostRecentLocalHandle;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void VideoMessageController.mostRecentLocalHandle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_mostRecentLocalHandle;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for VideoMessageController.currentVideoMessagePlayerViewModel : VideoMessageController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x150))();
  *a2 = result;
  return result;
}

uint64_t key path setter for VideoMessageController.currentVideoMessagePlayerViewModel : VideoMessageController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x158);
  v4 = *a1;
  return v3(v2);
}

uint64_t VideoMessageController.currentVideoMessagePlayerViewModel.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGMd);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))(v7);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<VideoMessageController.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GMd);
  Publisher.filter(_:)();
  (*(v2 + 8))(v4, v1);
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<Published<VideoMessageController.State>.Publisher> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGMd);
  Publisher<>.sink(receiveValue:)();

  (*(v6 + 8))(v9, v5);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t closure #1 in VideoMessageController.currentVideoMessagePlayerViewModel.didset(_BYTE *a1)
{
  v1 = 1;
  switch(*a1)
  {
    case 8:
      break;
    default:
      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
      break;
  }

  return v1 & 1;
}

uint64_t closure #2 in VideoMessageController.currentVideoMessagePlayerViewModel.didset(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v6 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v9 = static OS_dispatch_queue.main.getter();
  aBlock[4] = partial apply for closure #1 in closure #2 in VideoMessageController.currentVideoMessagePlayerViewModel.didset;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_163;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v8, v5, v10);
  _Block_release(v10);

  (*(v13 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v12);
}

void closure #1 in closure #2 in VideoMessageController.currentVideoMessagePlayerViewModel.didset()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xF8))(4);
  }
}

void VideoMessageController.currentVideoMessagePlayerViewModel.setter(void *a1)
{
  OUTLINED_FUNCTION_3_12();
  swift_unknownObjectWeakAssign();
  VideoMessageController.currentVideoMessagePlayerViewModel.didset();
}

void (*VideoMessageController.currentVideoMessagePlayerViewModel.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_currentVideoMessagePlayerViewModel;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_30_2();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return VideoMessageController.currentVideoMessagePlayerViewModel.modify;
}

void VideoMessageController.currentVideoMessagePlayerViewModel.modify(id **a1, char a2)
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

    VideoMessageController.currentVideoMessagePlayerViewModel.didset();
  }

  free(v3);
}

uint64_t key path getter for VideoMessageController.isVideoSensitive : VideoMessageController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x168))();
  *a2 = result & 1;
  return result;
}

uint64_t VideoMessageController.isVideoSensitive.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_isVideoSensitive;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t VideoMessageController.isVideoSensitive.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_isVideoSensitive;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for VideoMessageController.viewStateReadyForVideoMessageRecording : VideoMessageController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A0))();
  *a2 = result & 1;
  return result;
}

uint64_t VideoMessageController.viewStateReadyForVideoMessageRecording.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_viewStateReadyForVideoMessageRecording;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t VideoMessageController.viewStateReadyForVideoMessageRecording.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t key path getter for VideoMessageController.isVideoMessagingEnabled : VideoMessageController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1B8))();
  *a2 = result & 1;
  return result;
}

uint64_t VideoMessageController.isVideoMessagingEnabled.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t VideoMessageController.viewStateReadyForVideoMessageRecording.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return VideoMessageController.updateState()();
  }

  return result;
}

void VideoMessageController.callStateReadyForVideoMessageRecording.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_callCenter + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_callCenter), *(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_callCenter + 24));
  v2 = OUTLINED_FUNCTION_28_0();
  v4 = v3(v2, v1);
  v5 = (v4 + 40);
  v6 = -*(v4 + 16);
  v7 = -1;
  while (1)
  {
    if (v6 + v7 == -1)
    {
      goto LABEL_9;
    }

    if (++v7 >= *(v4 + 16))
    {
      break;
    }

    v8 = *v5;
    swift_getObjectType();
    v9 = *(v8 + 208);
    swift_unknownObjectRetain();
    v10 = OUTLINED_FUNCTION_1_5();
    if (v9(v10) == 1 || (v11 = OUTLINED_FUNCTION_1_5(), v9(v11) == 3))
    {
      swift_unknownObjectRelease();
LABEL_9:

      OUTLINED_FUNCTION_30_0();
      return;
    }

    v5 += 2;
    v12 = OUTLINED_FUNCTION_1_5();
    v13 = v9(v12);
    swift_unknownObjectRelease();
    if (v13 == 2)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t VideoMessageController.mediaType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_callCenter + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_callCenter), *(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_callCenter + 24));
  v2 = OUTLINED_FUNCTION_28_0();
  v4 = v3(v2, v1);
  v5 = [v4 isPreviewRunning];

  if (v5)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t VideoMessageController.currentRecordingUUID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_currentRecordingUUID;
  OUTLINED_FUNCTION_30_2();
  outlined assign with copy of UUID?(a1, v1 + v3);
  swift_endAccess();
  VideoMessageController.updateState()();
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, &_s10Foundation4UUIDVSgMd);
}

uint64_t key path setter for VideoMessageController.latestVideoMessageURL : VideoMessageController(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v6 - v3, &_s10Foundation3URLVSgMd);
  return VideoMessageController.latestVideoMessageURL.setter(v4);
}

uint64_t VideoMessageController.latestVideoMessageURL.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t VideoMessageController.latestVideoMessageURL.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, v6, &_s10Foundation3URLVSgMd);
  v7 = v1;
  static Published.subscript.setter();
  VideoMessageController.updateState()();
  v8 = OUTLINED_FUNCTION_44_0();
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, v9);
}

uint64_t key path setter for VideoMessageController.$state : VideoMessageController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = OUTLINED_FUNCTION_1_5();
  v12(v11);
  return a7(v10);
}

uint64_t VideoMessageController.$latestVideoMessageURL.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation3URLVSg_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation3URLVSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_44_0();
  return v5(v4);
}

uint64_t VideoMessageController.latestVideoMessageSandboxURL.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  *&v2 = MEMORY[0x1EEE9AC00](v1 - 8).n128_u64[0];
  v4 = &v10 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_latestVideoMessageSandboxURL);
  if (v5)
  {
    v6 = [v5 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = type metadata accessor for URL();
    v8 = 0;
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v8, 1, v7);
  return VideoMessageController.latestVideoMessageURL.setter(v4);
}

void VideoMessageController.latestVideoMessageSandboxURL.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_latestVideoMessageSandboxURL);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_latestVideoMessageSandboxURL) = a1;
  v3 = a1;

  VideoMessageController.latestVideoMessageSandboxURL.didset();
}

void VideoMessageController.momentsController.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController__momentsController;
  OUTLINED_FUNCTION_3_12();
  v2 = *(v0 + v1);
  if (v2)
  {
    goto LABEL_6;
  }

  v3 = [objc_opt_self() sharedInstance];
  v4 = *(v0 + v1);
  *(v0 + v1) = v3;
  v5 = v3;

  if (v5)
  {
    [v5 addDelegate_];
  }

  v6 = *(v0 + v1);
  if (v6)
  {
    v6;
    v2 = 0;
LABEL_6:
    v7 = v2;
    return;
  }

  __break(1u);
}

uint64_t VideoMessageController.ignoresStateUpdates.didset(uint64_t result)
{
  if ((result & 1) != 0 && (*(v1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_ignoresStateUpdates) & 1) == 0)
  {
    return VideoMessageController.updateState()();
  }

  return result;
}

uint64_t VideoMessageController.ignoresStateUpdates.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_ignoresStateUpdates);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_ignoresStateUpdates) = a1;
  return VideoMessageController.ignoresStateUpdates.didset(v2);
}

uint64_t VideoMessageController.countdownSink.setter(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_countdownSink) = a1;

  v2 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_countdownShown;
  result = swift_beginAccess();
  *(v1 + v2) = 1;
  return result;
}

uint64_t key path getter for VideoMessageController.countdownShown : VideoMessageController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2F0))();
  *a2 = result & 1;
  return result;
}

uint64_t VideoMessageController.countdownShown.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_countdownShown;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t VideoMessageController.countdownShown.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_countdownShown;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

char *VideoMessageController.__allocating_init(callCenter:momentsControllerType:notificationCenter:)(uint64_t a1, uint64_t a2, void *a3)
{
  outlined init with copy of IDSLookupManager(a1, v17);
  v6 = *(v3 + 776);
  v7 = a3;
  v8 = v6(v17, v7);
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = v8;
  v11 = [v9 init];
  v12 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController__momentsController;
  swift_beginAccess();
  v13 = *&v10[v12];
  *&v10[v12] = v11;

  swift_beginAccess();
  v14 = *&v10[v12];
  if (v14)
  {
    swift_endAccess();
    v15 = v14;

    [v15 addDelegate_];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_endAccess();
  }

  return v10;
}

Swift::Void __swiftcall VideoMessageController.playSentVideoMessageTone()()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v39[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v39 - v11;
  v13 = [objc_opt_self() conversationKit];
  v14 = outlined bridged method (mbbnn) of @objc NSBundle.url(forResource:withExtension:)(0xD000000000000015, 0x80000001BC50CE50, 6709603, 0xE300000000000000, v13);

  if (v14)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = OUTLINED_FUNCTION_1_5();
    v16(v15);
    v17 = objc_opt_self();
    v18 = [v17 sharedInstance];
    v19 = *MEMORY[0x1E6958068];
    v20 = *MEMORY[0x1E6958130];
    v39[0] = 0;
    v21 = [v18 setCategory:v19 mode:v20 options:2 error:v39];

    if (v21)
    {
      v22 = v39[0];
      v23 = [v17 sharedInstance];
      v39[0] = 0;
      v24 = [v23 setActive:1 error:v39];

      v25 = v39[0];
      if (v24)
      {
        (*(v4 + 16))(v8, v12, v2);
        objc_allocWithZone(MEMORY[0x1E6958448]);
        v26 = v25;
        v27 = @nonobjc AVAudioPlayer.init(contentsOf:)(v8);
        v36 = *(v1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_videoMessageSendSoundPlayer);
        *(v1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_videoMessageSendSoundPlayer) = v27;
        v37 = v27;

        if (v37)
        {
          [v37 play];
        }

LABEL_10:
        (*(v4 + 8))(v12, v2);
        goto LABEL_11;
      }

      v30 = v39[0];
      v29 = _convertNSErrorToError(_:)();
    }

    else
    {
      v28 = v39[0];
      v29 = _convertNSErrorToError(_:)();
    }

    swift_willThrow();
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1BC4BA940;
    v39[0] = v29;
    v32 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v33 = String.init<A>(reflecting:)();
    v35 = v34;
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v31 + 32) = v33;
    *(v31 + 40) = v35;
    os_log(_:dso:log:type:_:)();

    goto LABEL_10;
  }

LABEL_11:
  OUTLINED_FUNCTION_30_0();
}

id VideoMessageController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VideoMessageController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoMessageController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int VideoMessageController.UnrecoverableErrors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VideoMessageController.UnrecoverableErrors()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  VideoMessageController.UnrecoverableErrors.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int VideoMessageController.VideoMessageError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VideoMessageController.VideoMessageError()
{
  Hasher.init(_seed:)();
  VideoMessageController.VideoMessageError.hash(into:)();
  return Hasher._finalize()();
}

void VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v51 = v5;
  v52 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v53 = v48 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGGMd);
  OUTLINED_FUNCTION_1();
  v49 = v12;
  v50 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v48 - v18;
  OUTLINED_FUNCTION_20();
  v20 = swift_allocObject();
  *(v20 + 16) = v7;
  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v21 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v21, &static Logger.videoMessaging);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v48[2] = v20 + 16;
  if (v24)
  {
    v25 = OUTLINED_FUNCTION_42();
    *v25 = 134217984;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    *(v25 + 4) = *(v20 + 16);

    _os_log_impl(&dword_1BBC58000, v22, v23, "Starting countdown %ld", v25, 0xCu);
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTimer);
  v26 = [objc_opt_self() currentRunLoop];
  type metadata accessor for NSRunLoop.SchedulerOptions();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  v54 = v31;
  type metadata accessor for NSTimer.TimerPublisher();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_4(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x1E6969F70]);
  v32 = ConnectablePublisher.autoconnect()();
  v48[1] = v32;

  v54 = v32;
  OUTLINED_FUNCTION_37_0();
  v33 = swift_allocObject();
  v33[2] = v20;
  v33[3] = v3;
  v33[4] = v1;

  v34 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  OUTLINED_FUNCTION_3_0();
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  OUTLINED_FUNCTION_20();
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  v37 = v52;
  v36[2] = v20;
  v36[3] = v37;
  v36[4] = v51;
  v36[5] = v35;
  v36[6] = v34;
  v36[7] = v1;
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.Autoconnect<NSTimer.TimerPublisher>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGGMd);

  v38 = v50;
  v39 = Publisher<>.sink(receiveValue:)();

  (*(v49 + 8))(v15, v38);
  VideoMessageController.countdownSink.setter(v39);
  VideoMessageController.updateState()();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v37(*(v20 + 16));
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  OUTLINED_FUNCTION_20();
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  OUTLINED_FUNCTION_28_0();

  v45 = static MainActor.shared.getter();
  OUTLINED_FUNCTION_37_0();
  v46 = swift_allocObject();
  v47 = MEMORY[0x1E69E85E0];
  v46[2] = v45;
  v46[3] = v47;
  v46[4] = v44;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:)(uint64_t a1, uint64_t (*a2)(void))
{
  result = swift_beginAccess();
  if (*(a1 + 16))
  {
    return a2(0);
  }

  return result;
}

uint64_t closure #2 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  swift_beginAccess();
  v9 = *(a2 + 16);
  result = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = result;
    a3();
    result = swift_beginAccess();
    if (*(a2 + 16) <= 0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        VideoMessageController.countdownSink.setter(0);
      }

      swift_beginAccess();
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = v13;
        VideoMessageController.updateState()();
      }

      return a6(1);
    }
  }

  return result;
}

uint64_t closure #3 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v6;
  v4[17] = v5;

  return MEMORY[0x1EEE6DFA0](closure #3 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:), v6, v5);
}

uint64_t closure #3 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 144) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 152) = v2;
    *v2 = v0;
    v2[1] = closure #3 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:);

    return VideoMessageController.prewarm()();
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v4();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
    v7 = *(v3 + 128);
    v8 = *(v3 + 136);
    v9 = closure #3 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:);
  }

  else
  {

    v7 = *(v3 + 128);
    v8 = *(v3 + 136);
    v9 = closure #3 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = *(Strong + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_countdownSink), , v3, v4))
  {

    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      VideoMessageController.countdownSink.setter(0);
    }

    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    v8 = *(v0 + 160);
    if (v7)
    {
      v9 = v7;
      VideoMessageController.updateState()();

      goto LABEL_9;
    }

    v10 = *(v0 + 160);
  }

  else
  {
    v10 = *(v0 + 160);
  }

LABEL_9:
  OUTLINED_FUNCTION_13();

  return v11();
}

uint64_t VideoMessageController.prewarm()()
{
  OUTLINED_FUNCTION_24_0();
  v1[18] = v0;
  type metadata accessor for MainActor();
  v1[19] = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_56_0();
  v1[20] = v2;
  v1[21] = v3;
  v4 = OUTLINED_FUNCTION_55_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_9();
  v2 = v1[18];
  v3 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_warmedMomentsController;
  v1[22] = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_warmedMomentsController;
  if (*(v2 + v3))
  {

    OUTLINED_FUNCTION_5_102();

    return v4();
  }

  else
  {
    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v6 = type metadata accessor for Logger();
    v1[23] = __swift_project_value_buffer(v6, &static Logger.videoMessaging);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v9);
      _os_log_impl(&dword_1BBC58000, v7, v8, "Prewarming audio client", v0, 2u);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_62_9();
    v10 = v1[18];

    VideoMessageController.momentsController.getter();
    OUTLINED_FUNCTION_53_13();
    v1[24] = v11;
    v1[2] = v12;
    v13 = OUTLINED_FUNCTION_344();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
    OUTLINED_FUNCTION_30_22(v14);
    OUTLINED_FUNCTION_368(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_193();
    v1[13] = v15;
    v1[14] = v13;
    [v10 prewarmAudioClientWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v8);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  OUTLINED_FUNCTION_43_15();
  v5 = *(v4 + 168);
  v7 = *(v6 + 160);
  if (v8)
  {
    v9 = VideoMessageController.prewarm();
  }

  else
  {
    v9 = VideoMessageController.prewarm();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[18];

  *(v3 + v2) = 1;
  VideoMessageController.updateState()();
  OUTLINED_FUNCTION_5_102();

  return v4();
}

{
  OUTLINED_FUNCTION_48();
  v20 = v0;
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);

  swift_willThrow();

  v4 = v3;
  v5 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_111_3();
  if (OUTLINED_FUNCTION_112_2())
  {
    v6 = *(v0 + 200);
    OUTLINED_FUNCTION_42();
    v19 = OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_96_6(4.8149e-34);
    *(v1 + 80) = v6;
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v8 = OUTLINED_FUNCTION_91_6();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v19);
    OUTLINED_FUNCTION_102_1();
    *(v3 + 4) = v1 + 80;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_26();
  }

  v15 = *(v0 + 200);
  lazy protocol witness table accessor for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors();
  OUTLINED_FUNCTION_19_6();
  *v16 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_13();

  return v17();
}

uint64_t VideoMessageController.start()()
{
  OUTLINED_FUNCTION_24_0();
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v2);
  v1[20] = OUTLINED_FUNCTION_109_4();
  v3 = type metadata accessor for UUID();
  v1[21] = v3;
  OUTLINED_FUNCTION_9_0(v3);
  v1[22] = v4;
  v5 = OUTLINED_FUNCTION_74();
  v1[24] = OUTLINED_FUNCTION_103_1(v5);
  v1[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[26] = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_56_0();
  v1[27] = v6;
  v1[28] = v7;
  v8 = OUTLINED_FUNCTION_55_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 240) = v0;

  v5 = *(v2 + 224);
  v6 = *(v2 + 216);
  if (v0)
  {
    v7 = VideoMessageController.start();
  }

  else
  {
    v7 = VideoMessageController.start();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_48();
  v19 = v0;
  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v1 = *(v0 + 152);
  v2 = type metadata accessor for Logger();
  *(v0 + 248) = OUTLINED_FUNCTION_52(v2, &static Logger.videoMessaging);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_42();
    v18 = OUTLINED_FUNCTION_38_3();
    *v3 = 136315138;
    *(v0 + 280) = VideoMessageController.mediaType.getter();
    v6 = String.init<A>(reflecting:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v18);

    *(v3 + 1) = v8;
    OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v9, v10, "Starting message recording with media type %s");
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_62_9();
  v11 = *(v0 + 152);
  v12 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_hasActiveOrPendingRecordingSession;
  *(v0 + 256) = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_hasActiveOrPendingRecordingSession;
  *(v11 + v12) = 1;
  VideoMessageController.updateState()();
  VideoMessageController.momentsController.getter();
  v14 = v13;
  *(v0 + 264) = v13;
  v15 = VideoMessageController.mediaType.getter();
  *(v0 + 16) = v0;
  OUTLINED_FUNCTION_28_37();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation4UUIDVs5Error_pGMd);
  OUTLINED_FUNCTION_30_22(v16);
  OUTLINED_FUNCTION_368(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_27_33();
  [v14 startRecordingMessageWithMediaType:v15 completion:v5];

  return MEMORY[0x1EEE6DEC8](v4);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = *(v3 + 48);
  OUTLINED_FUNCTION_43_15();
  v5 = *(v4 + 224);
  v7 = *(v6 + 216);
  if (v8)
  {
    v9 = VideoMessageController.start();
  }

  else
  {
    v9 = VideoMessageController.start();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_48();
  v20 = v0;
  v2 = v0[33];
  v3 = v0[34];

  swift_willThrow();

  v4 = v3;
  v5 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_111_3();
  if (OUTLINED_FUNCTION_112_2())
  {
    v6 = v0[34];
    OUTLINED_FUNCTION_42();
    v19 = OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_96_6(4.8149e-34);
    *(v1 + 144) = v6;
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v8 = OUTLINED_FUNCTION_91_6();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v19);
    OUTLINED_FUNCTION_102_1();
    *(v3 + 4) = v1 + 144;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_26();
  }

  v15 = v0[34];
  *(v0[19] + v0[32]) = 0;
  VideoMessageController.updateState()();
  lazy protocol witness table accessor for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors();
  OUTLINED_FUNCTION_19_6();
  *v16 = 1;
  swift_willThrow();

  OUTLINED_FUNCTION_13();

  return v17();
}

uint64_t VideoMessageController.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_86_2();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_48();
  a16 = v18;
  v21 = *((*MEMORY[0x1E69E7D40] & **(v18 + 152)) + 0xF0);
  v22 = v21();
  v24 = VideoMessageController.State.rawValue.getter(v22) == 0xD000000000000014 && 0x80000001BC4F1C50 == v23;
  if (v24)
  {
    goto LABEL_23;
  }

  v25 = OUTLINED_FUNCTION_80_3();

  if (v25)
  {
    goto LABEL_24;
  }

  v27 = (v21)(v26);
  VideoMessageController.State.rawValue.getter(v27);
  OUTLINED_FUNCTION_99_3();
  if (v24 && v28 == 0xE500000000000000)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_30_20();
  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
    goto LABEL_24;
  }

  v32 = (v21)(v31);
  if (VideoMessageController.State.rawValue.getter(v32) == 0xD000000000000014 && 0x80000001BC4F1C50 == v33)
  {
LABEL_23:
  }

  else
  {
    OUTLINED_FUNCTION_80_3();
    OUTLINED_FUNCTION_90();
    if ((0xBC4F1C50 & 1) == 0)
    {

      if (one-time initialization token for videoMessaging != -1)
      {
        OUTLINED_FUNCTION_0_8();
      }

      v35 = *(v18 + 152);
      v36 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v36, &static Logger.videoMessaging);
      v37 = v35;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_38_3();
        OUTLINED_FUNCTION_92_4();
        *v37 = 136315138;
        *(v18 + 284) = v21();
        v40 = String.init<A>(reflecting:)();
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &a9);

        *(v37 + 1) = v42;
        OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v43, v44, "Attempted to start video message recording in invalid state %s");
        OUTLINED_FUNCTION_28_2();
        OUTLINED_FUNCTION_4_4();
      }

      OUTLINED_FUNCTION_5_102();
      OUTLINED_FUNCTION_69();

      return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10);
    }
  }

LABEL_24:
  v54 = *(v18 + 152);
  if (*(v54 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_warmedMomentsController))
  {
    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8();
      v54 = *(v18 + 152);
    }

    v55 = type metadata accessor for Logger();
    *(v18 + 248) = OUTLINED_FUNCTION_52(v55, &static Logger.videoMessaging);
    v56 = v54;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v57, v58))
    {
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_38_3();
      OUTLINED_FUNCTION_92_4();
      *v56 = 136315138;
      *(v18 + 280) = VideoMessageController.mediaType.getter();
      v59 = String.init<A>(reflecting:)();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &a9);

      *(v56 + 1) = v61;
      OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v62, v63, "Starting message recording with media type %s");
      OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_4_4();
    }

    OUTLINED_FUNCTION_62_9();
    v64 = *(v18 + 152);
    v65 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_hasActiveOrPendingRecordingSession;
    *(v18 + 256) = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_hasActiveOrPendingRecordingSession;
    *(v64 + v65) = 1;
    VideoMessageController.updateState()();
    VideoMessageController.momentsController.getter();
    v67 = v66;
    *(v18 + 264) = v66;
    v68 = VideoMessageController.mediaType.getter();
    *(v18 + 16) = v18;
    OUTLINED_FUNCTION_28_37();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation4UUIDVs5Error_pGMd);
    OUTLINED_FUNCTION_30_22(v69);
    OUTLINED_FUNCTION_368(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_27_33();
    [v67 startRecordingMessageWithMediaType:v68 completion:v58];
    OUTLINED_FUNCTION_69();

    return MEMORY[0x1EEE6DEC8](v70);
  }

  else
  {
    v72 = swift_task_alloc();
    *(v18 + 232) = v72;
    *v72 = v18;
    v72[1] = VideoMessageController.start();
    OUTLINED_FUNCTION_69();

    return VideoMessageController.prewarm()();
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSUUID?, @unowned NSError?) -> () with result type UUID(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v9 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v8, v9);
  }

  else
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v8, v7);
  }
}

uint64_t VideoMessageController.pause()()
{
  OUTLINED_FUNCTION_24_0();
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_28_0();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](VideoMessageController.pause(), v3, v2);
}

{
  OUTLINED_FUNCTION_24_0();

  VideoMessageController.countdownSink.setter(0);
  VideoMessageController.updateState()();
  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t VideoMessageController.stop()()
{
  OUTLINED_FUNCTION_24_0();
  v1[22] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v2);
  v3 = OUTLINED_FUNCTION_74();
  v1[24] = OUTLINED_FUNCTION_103_1(v3);
  v4 = type metadata accessor for UUID();
  v1[25] = v4;
  OUTLINED_FUNCTION_9_0(v4);
  v1[26] = v5;
  v1[27] = OUTLINED_FUNCTION_74();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[30] = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_56_0();
  v1[31] = v6;
  v1[32] = v7;
  v8 = OUTLINED_FUNCTION_55_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  v63 = v0;
  v3 = v0[25];
  OUTLINED_FUNCTION_3_0();
  v4 = swift_beginAccess();
  OUTLINED_FUNCTION_105_1(v4, v5, &_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_3_84();
  if (v22)
  {
    v6 = v0[24];

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSgMd);
    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v7, &static Logger.videoMessaging);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_22_0(v9))
    {
      v10 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v10);
      OUTLINED_FUNCTION_112_0();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_51_16();

    OUTLINED_FUNCTION_5_102();
    OUTLINED_FUNCTION_13_3();

    __asm { BRAA            X1, X16 }
  }

  v18 = OUTLINED_FUNCTION_75_9();
  v20 = v19(v18);
  v21 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xF0))(v20);
  VideoMessageController.State.rawValue.getter(v21);
  OUTLINED_FUNCTION_99_3();
  if (v22)
  {
    v24 = v23 == 0xEF676E6964726F63;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
  }

  else
  {
    OUTLINED_FUNCTION_30_20();
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_90();
  }

  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v25 = v0[25];
  v26 = v0[26];
  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, &static Logger.videoMessaging);
  v29 = OUTLINED_FUNCTION_42_21(v28);
  v2(v29);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = OUTLINED_FUNCTION_22_0(v31);
  v33 = v0[28];
  if (v32)
  {
    v1 = v0[23];
    OUTLINED_FUNCTION_42();
    v62[0] = OUTLINED_FUNCTION_21_4();
    v34 = OUTLINED_FUNCTION_45_17(4.8149e-34);
    v35 = (v2)(v34);
    OUTLINED_FUNCTION_6_85(v35, v36, v37, v38, v39, v40, v41, v42, v61, v62[0], v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7]);
    OUTLINED_FUNCTION_61_8();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4UUIDVSgMd);
    v43 = OUTLINED_FUNCTION_12_59();
    v1(v43);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v2, v62);
    OUTLINED_FUNCTION_81();
    *(v25 + 4) = v33;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
    OUTLINED_FUNCTION_44_15();
    OUTLINED_FUNCTION_26();
  }

  else
  {

    v49 = OUTLINED_FUNCTION_12_59();
    v1(v49);
  }

  OUTLINED_FUNCTION_62_9();
  v0[36] = v1;
  VideoMessageController.momentsController.getter();
  v0[37] = v50;
  UUID._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_53_13();
  v0[38] = v51;
  v0[2] = v52;
  v53 = OUTLINED_FUNCTION_344();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
  OUTLINED_FUNCTION_30_22(v54);
  OUTLINED_FUNCTION_368(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_193();
  v0[13] = v55;
  v0[14] = v53;
  v56 = OUTLINED_FUNCTION_46_16();
  [v56 v57];
  OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DEC8](v58);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 312) = *(v3 + 48);
  OUTLINED_FUNCTION_43_15();
  v5 = *(v4 + 256);
  v7 = *(v6 + 248);
  if (v8)
  {
    v9 = VideoMessageController.stop();
  }

  else
  {
    v9 = VideoMessageController.stop();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t VideoMessageController.stop()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_36_3();
  a23 = v30;
  a24 = v31;
  OUTLINED_FUNCTION_54_12();
  a22 = v25;
  OUTLINED_FUNCTION_100_2();
  swift_willThrow();

  v32 = v26;
  v33 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_111_3();
  if (OUTLINED_FUNCTION_112_2())
  {
    v34 = *(v25 + 312);
    OUTLINED_FUNCTION_42();
    a12 = OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_96_6(4.8149e-34);
    *(v28 + 168) = v34;
    v28 += 168;
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v36 = OUTLINED_FUNCTION_91_6();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &a12);
    OUTLINED_FUNCTION_102_1();
    *(v26 + 4) = v28;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_65_10();
  OUTLINED_FUNCTION_19_6();
  *v43 = 2;
  swift_willThrow();

  v29(v24, v28);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12_4();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t VideoMessageController.save()()
{
  OUTLINED_FUNCTION_24_0();
  v1[22] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v2);
  v3 = OUTLINED_FUNCTION_74();
  v1[24] = OUTLINED_FUNCTION_103_1(v3);
  v4 = type metadata accessor for UUID();
  v1[25] = v4;
  OUTLINED_FUNCTION_9_0(v4);
  v1[26] = v5;
  v1[27] = OUTLINED_FUNCTION_74();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[30] = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_56_0();
  v1[31] = v6;
  v1[32] = v7;
  v8 = OUTLINED_FUNCTION_55_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  v64 = v0;
  v3 = v0[24];
  v4 = v0[25];
  OUTLINED_FUNCTION_3_0();
  v5 = swift_beginAccess();
  OUTLINED_FUNCTION_105_1(v5, v6, &_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_3_84();
  if (v23)
  {
    v7 = v0[24];

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s10Foundation4UUIDVSgMd);
    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v8, &static Logger.videoMessaging);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_22_0(v10))
    {
      v11 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v11);
      OUTLINED_FUNCTION_112_0();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_26();
    }

LABEL_8:
    OUTLINED_FUNCTION_51_16();

    OUTLINED_FUNCTION_5_102();
    OUTLINED_FUNCTION_13_3();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_48_13();
  v19 = OUTLINED_FUNCTION_75_9();
  v21 = v20(v19);
  v22 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xF0))(v21);
  VideoMessageController.State.rawValue.getter(v22);
  OUTLINED_FUNCTION_99_3();
  if (v23)
  {
    v25 = v24 == v3;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
  }

  else
  {
    OUTLINED_FUNCTION_30_20();
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_90();
    if ((v3 & 1) == 0)
    {
      (*(v0[26] + 8))(v0[29], v0[25]);

      goto LABEL_8;
    }
  }

  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v26 = v0[25];
  v27 = v0[26];
  v28 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v28, &static Logger.videoMessaging);
  v30 = OUTLINED_FUNCTION_42_21(v29);
  v2(v30);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = OUTLINED_FUNCTION_22_0(v32);
  v34 = v0[28];
  if (v33)
  {
    v1 = v0[23];
    OUTLINED_FUNCTION_42();
    v63[0] = OUTLINED_FUNCTION_21_4();
    v35 = OUTLINED_FUNCTION_45_17(4.8149e-34);
    v36 = (v2)(v35);
    OUTLINED_FUNCTION_6_85(v36, v37, v38, v39, v40, v41, v42, v43, v62, v63[0], v63[0], v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7]);
    OUTLINED_FUNCTION_61_8();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4UUIDVSgMd);
    v44 = OUTLINED_FUNCTION_12_59();
    v1(v44);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v2, v63);
    OUTLINED_FUNCTION_81();
    *(v26 + 4) = v34;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
    OUTLINED_FUNCTION_44_15();
    OUTLINED_FUNCTION_26();
  }

  else
  {

    v50 = OUTLINED_FUNCTION_12_59();
    v1(v50);
  }

  OUTLINED_FUNCTION_62_9();
  v0[36] = v1;
  VideoMessageController.momentsController.getter();
  v0[37] = v51;
  UUID._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_53_13();
  v0[38] = v52;
  v0[2] = v53;
  v54 = OUTLINED_FUNCTION_344();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
  OUTLINED_FUNCTION_30_22(v55);
  OUTLINED_FUNCTION_368(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_193();
  v0[13] = v56;
  v0[14] = v54;
  v57 = OUTLINED_FUNCTION_46_16();
  [v57 v58];
  OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DEC8](v59);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 312) = *(v3 + 48);
  OUTLINED_FUNCTION_43_15();
  v5 = *(v4 + 256);
  v7 = *(v6 + 248);
  if (v8)
  {
    v9 = VideoMessageController.save();
  }

  else
  {
    v9 = VideoMessageController.save();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t VideoMessageController.save()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_36_3();
  a23 = v30;
  a24 = v31;
  OUTLINED_FUNCTION_54_12();
  a22 = v25;
  OUTLINED_FUNCTION_100_2();
  swift_willThrow();

  v32 = v26;
  v33 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_111_3();
  if (OUTLINED_FUNCTION_112_2())
  {
    v34 = *(v25 + 312);
    OUTLINED_FUNCTION_42();
    a12 = OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_96_6(4.8149e-34);
    *(v28 + 168) = v34;
    v28 += 168;
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v36 = OUTLINED_FUNCTION_91_6();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &a12);
    OUTLINED_FUNCTION_102_1();
    *(v26 + 4) = v28;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_65_10();
  OUTLINED_FUNCTION_19_6();
  *v43 = 3;
  swift_willThrow();

  v29(v24, v28);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12_4();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t VideoMessageController.complete(sendingTo:sendingFrom:in:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v5);
  v1[10] = OUTLINED_FUNCTION_74();
  v1[11] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v1[12] = v6;
  OUTLINED_FUNCTION_9_0(v6);
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_74();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = type metadata accessor for MainActor();
  v1[18] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_56_0();
  v1[19] = v8;
  v1[20] = v9;
  v10 = OUTLINED_FUNCTION_55_12();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v6 = v5;
  v3[28] = v0;

  if (v0)
  {
    v7 = v3[19];
    v8 = v3[20];
    v9 = VideoMessageController.complete(sendingTo:sendingFrom:in:);
  }

  else
  {

    v7 = v3[19];
    v8 = v3[20];
    v9 = VideoMessageController.complete(sendingTo:sendingFrom:in:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t VideoMessageController.complete(sendingTo:sendingFrom:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_86_2();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_48();
  a16 = v18;
  v22 = v18[28];
  v23 = v18[21];

  VideoMessageController.updateState()();
  v24 = v22;
  v25 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_104_3();
  if (OUTLINED_FUNCTION_317())
  {
    v26 = v18[28];
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_38_3();
    OUTLINED_FUNCTION_92_4();
    *v23 = 136315138;
    v18[5] = v26;
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v28 = OUTLINED_FUNCTION_91_6();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &a9);
    OUTLINED_FUNCTION_420();
    *(v23 + 4) = v19;
    OUTLINED_FUNCTION_47_0(&dword_1BBC58000, v30, v31, "Failed to send video message with error: %s");
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v32 = v18[28];
  }

  v33 = OUTLINED_FUNCTION_94_3();
  v34(v33);
  OUTLINED_FUNCTION_83_6();

  OUTLINED_FUNCTION_5_102();
  OUTLINED_FUNCTION_69();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

void closure #1 in VideoMessageController.complete(sendingTo:sendingFrom:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28 = a4;
  v29 = a6;
  v26 = a2;
  v27 = a3;
  v30 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v18 = *(v11 + 16);
  v18(&v25 - v16, v26, v10, v15);
  (v18)(v13, v27, v10);
  objc_allocWithZone(MEMORY[0x1E69D8C60]);

  v19 = @nonobjc TUMomentsMessageSendRequest.init(sessionUUID:conversationID:senderHandle:destinationHandles:)(v17, v13, v28);
  VideoMessageController.momentsController.getter();
  v21 = v20;
  (*(v7 + 16))(v9, v30, v6);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = swift_allocObject();
  (*(v7 + 32))(v23 + v22, v9, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in VideoMessageController.complete(sendingTo:sendingFrom:in:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_156_0;
  v24 = _Block_copy(aBlock);

  [v21 sendVideoMessageWithRequest:v19 completion:v24];
  _Block_release(v24);
}

uint64_t closure #1 in closure #1 in VideoMessageController.complete(sendingTo:sendingFrom:in:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  if (!a1)
  {
    return CheckedContinuation.resume(returning:)();
  }

  (*(v5 + 16))(v8, a2, v4, v6);
  v11[1] = a1;
  v9 = a1;
  CheckedContinuation.resume(throwing:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t VideoMessageController.reset()()
{
  OUTLINED_FUNCTION_24_0();
  v1[54] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v2);
  v1[55] = OUTLINED_FUNCTION_109_4();
  v3 = type metadata accessor for UUID();
  v1[56] = v3;
  OUTLINED_FUNCTION_9_0(v3);
  v1[57] = v4;
  v1[58] = OUTLINED_FUNCTION_109_4();
  type metadata accessor for MainActor();
  v1[59] = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_56_0();
  v1[60] = v5;
  v1[61] = v6;
  v7 = OUTLINED_FUNCTION_55_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_9();
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  VideoMessageController.ignoresStateUpdates.setter(1);
  v4 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_currentRecordingUUID;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v3 + v4, v2, &_s10Foundation4UUIDVSgMd);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = v0[54];
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0[55], &_s10Foundation4UUIDVSgMd);
    VideoMessageController.momentsController.getter();
    OUTLINED_FUNCTION_53_13();
    v0[70] = v6;
    v0[2] = v7;
    v8 = OUTLINED_FUNCTION_344();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[29] = &block_descriptor_43_1;
    v0[30] = v8;
    [v5 resetVideoMessagingWithSessionUUID:0 completion:v0 + 26];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    (*(v0[57] + 32))(v0[58], v0[55], v0[56]);
    v9 = swift_task_alloc();
    v0[62] = v9;
    *v9 = v0;
    v9[1] = VideoMessageController.reset();

    return VideoMessageController.stop()();
  }
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 504) = v0;

  v5 = *(v2 + 488);
  v6 = *(v2 + 480);
  if (v0)
  {
    v7 = VideoMessageController.reset();
  }

  else
  {
    v7 = VideoMessageController.reset();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  VideoMessageController.momentsController.getter();
  v0[64].super.isa = v1;
  v0[65].super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[18].super.isa = v0;
  v0[19].super.isa = VideoMessageController.reset();
  v2 = swift_continuation_init();
  v0[49].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
  v0[42].super.isa = MEMORY[0x1E69E9820];
  v0[43].super.isa = 1107296256;
  v0[44].super.isa = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[45].super.isa = &block_descriptor_51_0;
  v0[46].super.isa = v2;
  v3 = OUTLINED_FUNCTION_46_16();
  [v3 v4];
  OUTLINED_FUNCTION_319();

  return MEMORY[0x1EEE6DEC8](v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 528) = *(v3 + 176);
  OUTLINED_FUNCTION_43_15();
  v5 = *(v4 + 488);
  v7 = *(v6 + 480);
  if (v8)
  {
    v9 = VideoMessageController.reset();
  }

  else
  {
    v9 = VideoMessageController.reset();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  isa = v0[65].super.isa;

  VideoMessageController.momentsController.getter();
  v0[67].super.isa = v2;
  v0[68].super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[10].super.isa = v0;
  v0[11].super.isa = VideoMessageController.reset();
  v3 = swift_continuation_init();
  v0[41].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
  v0[34].super.isa = MEMORY[0x1E69E9820];
  v0[35].super.isa = 1107296256;
  v0[36].super.isa = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[37].super.isa = &block_descriptor_48_0;
  v0[38].super.isa = v3;
  v4 = OUTLINED_FUNCTION_46_16();
  [v4 v5];
  OUTLINED_FUNCTION_319();

  return MEMORY[0x1EEE6DEC8](v6);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 552) = *(v3 + 112);
  OUTLINED_FUNCTION_43_15();
  v5 = *(v4 + 488);
  v7 = *(v6 + 480);
  if (v8)
  {
    v9 = VideoMessageController.reset();
  }

  else
  {
    v9 = VideoMessageController.reset();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v1 = v0[68];
  v2 = v0[67];

  v3 = OUTLINED_FUNCTION_38_2();
  v4(v3);

  $defer #1 () in VideoMessageController.reset()(v0[54]);

  OUTLINED_FUNCTION_5_102();
  OUTLINED_FUNCTION_319();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 568) = *(v3 + 48);
  OUTLINED_FUNCTION_43_15();
  v5 = *(v4 + 488);
  v7 = *(v6 + 480);
  if (v8)
  {
    v9 = VideoMessageController.reset();
  }

  else
  {
    v9 = VideoMessageController.reset();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 560);

  $defer #1 () in VideoMessageController.reset()(*(v0 + 432));

  OUTLINED_FUNCTION_5_102();

  return v2();
}

{
  OUTLINED_FUNCTION_44();

  swift_willThrow();
  v1 = *(v0 + 432);

  $defer #1 () in VideoMessageController.reset()(v1);

  OUTLINED_FUNCTION_13();

  return v2();
}

{
  v22 = v0;
  v3 = v0[65];
  v4 = v0[64];
  swift_willThrow();

  v5 = v0[66];
  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, &static Logger.videoMessaging);
  v7 = OUTLINED_FUNCTION_28_0();
  v8 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_104_3();
  if (OUTLINED_FUNCTION_317())
  {
    OUTLINED_FUNCTION_42();
    v21 = OUTLINED_FUNCTION_38_3();
    *v1 = 136315138;
    v0[53] = v5;
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v10 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v21);
    OUTLINED_FUNCTION_420();
    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_47_0(&dword_1BBC58000, v12, v13, "Discard during reset failed with error: %s");
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_101_2();
  v0[67] = v14;
  UUID._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_53_13();
  v0[68] = v15;
  v0[10] = v16;
  OUTLINED_FUNCTION_31_28();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
  OUTLINED_FUNCTION_29_28(v17);
  v0[35] = 1107296256;
  OUTLINED_FUNCTION_30_26();
  v18 = OUTLINED_FUNCTION_46_16();
  [v18 v19];

  return MEMORY[0x1EEE6DEC8](v5);
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 544);

  swift_willThrow();
  v2 = OUTLINED_FUNCTION_38_2();
  v3(v2);

  v4 = *(v0 + 432);
  $defer #1 () in VideoMessageController.reset()(v4);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_319();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t VideoMessageController.reset()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_86_2();
  a17 = v21;
  a18 = v22;
  OUTLINED_FUNCTION_48();
  a16 = v18;
  v23 = v18[63];
  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, &static Logger.videoMessaging);
  v25 = OUTLINED_FUNCTION_28_0();
  v26 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_104_3();
  if (OUTLINED_FUNCTION_317())
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_38_3();
    OUTLINED_FUNCTION_92_4();
    *v19 = 136315138;
    v18[53] = v23;
    v27 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v28 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &a9);
    OUTLINED_FUNCTION_420();
    *(v19 + 4) = v20;
    OUTLINED_FUNCTION_47_0(&dword_1BBC58000, v30, v31, "Discard during reset failed with error: %s");
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_101_2();
  v18[67] = v32;
  UUID._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_53_13();
  v18[68] = v33;
  v18[10] = v34;
  OUTLINED_FUNCTION_31_28();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
  OUTLINED_FUNCTION_29_28(v35);
  v18[35] = 1107296256;
  OUTLINED_FUNCTION_30_26();
  v36 = OUTLINED_FUNCTION_46_16();
  [v36 v37];
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DEC8](v38);
}

void $defer #1 () in VideoMessageController.reset()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  VideoMessageController.currentRecordingUUID.setter(v4);
  VideoMessageController.countdownSink.setter(0);
  VideoMessageController.latestVideoMessageSandboxURL.setter(0);
  *(a1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_warmedMomentsController) = 0;
  v6 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController__momentsController;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = 0;

  v8 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_countdownShown;
  swift_beginAccess();
  *(a1 + v8) = 0;
  v9 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_isVideoSensitive;
  swift_beginAccess();
  *(a1 + v9) = 0;
  *(a1 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_sendingInProgress) = 0;
  VideoMessageController.ignoresStateUpdates.setter(0);
  if (one-time initialization token for videoMessaging != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, &static Logger.videoMessaging);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BBC58000, v11, v12, "Reset message controller complete", v13, 2u);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
  }
}

uint64_t VideoMessageController.discardRecording()()
{
  OUTLINED_FUNCTION_24_0();
  v1[22] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v2);
  v3 = OUTLINED_FUNCTION_74();
  v1[24] = OUTLINED_FUNCTION_103_1(v3);
  v4 = type metadata accessor for UUID();
  v1[25] = v4;
  OUTLINED_FUNCTION_9_0(v4);
  v1[26] = v5;
  v1[27] = OUTLINED_FUNCTION_109_4();
  type metadata accessor for MainActor();
  v1[28] = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_56_0();
  v1[29] = v6;
  v1[30] = v7;
  v8 = OUTLINED_FUNCTION_55_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_3_0();
  v1 = swift_beginAccess();
  OUTLINED_FUNCTION_105_1(v1, v2, &_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_3_84();
  if (v3)
  {
    v4 = v0[24];

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s10Foundation4UUIDVSgMd);
    OUTLINED_FUNCTION_88_3();
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_51_16();
    OUTLINED_FUNCTION_88_3();
    OUTLINED_FUNCTION_110_4();

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_319();

    return v6(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_62_9();
    (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
    VideoMessageController.momentsController.getter();
    v0[31] = v14;
    UUID._bridgeToObjectiveC()();
    OUTLINED_FUNCTION_53_13();
    v0[32] = v15;
    v0[2] = v16;
    v17 = OUTLINED_FUNCTION_344();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
    OUTLINED_FUNCTION_30_22(v18);
    OUTLINED_FUNCTION_368(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_193();
    v0[13] = v19;
    v0[14] = v17;
    v20 = OUTLINED_FUNCTION_46_16();
    [v20 v21];
    OUTLINED_FUNCTION_319();

    return MEMORY[0x1EEE6DEC8](v22);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 264) = *(v3 + 48);
  OUTLINED_FUNCTION_43_15();
  v5 = *(v4 + 240);
  v7 = *(v6 + 232);
  if (v8)
  {
    v9 = VideoMessageController.discardRecording();
  }

  else
  {
    v9 = VideoMessageController.discardRecording();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

{
  v19 = v0;
  v2 = v0[32];
  v3 = v0[31];

  swift_willThrow();
  v4 = OUTLINED_FUNCTION_38_2();
  v5(v4);

  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, &static Logger.videoMessaging);
  v7 = OUTLINED_FUNCTION_28_0();
  v8 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_104_3();
  v9 = OUTLINED_FUNCTION_317();
  v10 = v0[33];
  if (v9)
  {
    OUTLINED_FUNCTION_42();
    v18 = OUTLINED_FUNCTION_38_3();
    *v2 = 136315138;
    v0[21] = v10;
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v12 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);
    OUTLINED_FUNCTION_420();
    *(v2 + 1) = v1;
    OUTLINED_FUNCTION_47_0(&dword_1BBC58000, v14, v15, "Recording discard failed with error: %s");
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_51_16();
  OUTLINED_FUNCTION_88_3();
  *(v8 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_warmedMomentsController) = 0;
  VideoMessageController.updateState()();

  OUTLINED_FUNCTION_13();

  return v16();
}

uint64_t VideoMessageController.discardRecording()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_48();
  v12 = v10[31];
  v11 = v10[32];
  v13 = v10[25];
  v14 = v10[23];

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
  VideoMessageController.currentRecordingUUID.setter(v14);
  v18 = OUTLINED_FUNCTION_44_0();
  v19(v18);
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_110_4();
  OUTLINED_FUNCTION_51_16();
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_110_4();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_69();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t VideoMessageController.State.debugDescription.getter()
{
  MEMORY[0x1BFB20B10](46, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

ConversationKit::VideoMessageController::State_optional __swiftcall VideoMessageController.State.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VideoMessageController.State.init(rawValue:), v3);
  OUTLINED_FUNCTION_28_0();

  if (v1 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v1;
  }
}

ConversationKit::VideoMessageController::State_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VideoMessageController.State@<W0>(Swift::String *a1@<X0>, ConversationKit::VideoMessageController::State_optional *a2@<X8>)
{
  result.value = VideoMessageController.State.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VideoMessageController.State@<X0>(uint64_t *a1@<X8>)
{
  result = VideoMessageController.State.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v22 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v15 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_37_0();
  v16 = swift_allocObject();
  v16[2] = v0;
  v16[3] = v2;
  v16[4] = v4;
  v23[4] = partial apply for closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:);
  v23[5] = v16;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = thunk for @escaping @callee_guaranteed () -> ();
  v23[3] = &block_descriptor_61_0;
  v17 = _Block_copy(v23);
  v18 = v0;
  v19 = v2;
  v20 = v4;

  static DispatchQoS.unspecified.getter();
  v23[0] = MEMORY[0x1E69E7CC0];
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v14, v9, v17);
  _Block_release(v17);

  (*(v22 + 8))(v9, v5);
  (*(v11 + 8))(v14, v21);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)(void *a1, void *a2, void *a3)
{
  v92 = a3;
  v95 = a2;
  v88 = type metadata accessor for URL();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v94);
  v6 = &v86 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v89 = &v86 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v90 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v86 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v97 = &v86 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v86 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v86 - v23;
  v25 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_currentRecordingUUID;
  swift_beginAccess();
  v98 = a1;
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1 + v25, v17, &_s10Foundation4UUIDVSgMd);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v18);
  v91 = v21;
  v93 = v19;
  if (EnumTagSinglePayload == 1)
  {
    v27 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s10Foundation4UUIDVSgMd);
    v28 = v95;
  }

  else
  {
    (*(v19 + 32))(v24, v17, v18);
    v28 = v95;
    v29 = [v95 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    LOBYTE(v29) = dispatch thunk of static Equatable.== infix(_:_:)();
    v30 = *(v19 + 8);
    v30(v21, v18);
    if ((v29 & 1) == 0)
    {
      v31 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v89, 1, 1, v31);
      type metadata accessor for MainActor();
      v92 = v92;
      v32 = v28;
      v33 = v28;
      v34 = static MainActor.shared.getter();
      v35 = swift_allocObject();
      v36 = MEMORY[0x1E69E85E0];
      v35[2] = v34;
      v35[3] = v36;
      v35[4] = v92;
      v35[5] = v33;
      v28 = v32;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    }

    v27 = (v30)(v24, v18);
  }

  v37 = v97;
  v38 = ((*MEMORY[0x1E69E7D40] & *v98) + 240);
  v95 = *((*MEMORY[0x1E69E7D40] & *v98) + 0xF0);
  v92 = v38;
  v39 = (v95)(v27);
  v41 = VideoMessageController.State.rawValue.getter(v39) == 0x6552657669746361 && v40 == 0xEF676E6964726F63;
  v42 = v96;
  if (v41)
  {
    goto LABEL_17;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v43)
  {
    goto LABEL_18;
  }

  v45 = (v95)(v44);
  if (VideoMessageController.State.rawValue.getter(v45) == 0xD000000000000013 && 0x80000001BC4F1C90 == v46)
  {
LABEL_17:
  }

  else
  {
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v48 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_18:
  outlined init with copy of (CGFloat, AutoplayCandidate)(v98 + v25, v37, &_s10Foundation4UUIDVSgMd);
  v49 = [v28 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_storeEnumTagSinglePayload(v42, 0, 1, v18);
  v50 = *(v94 + 48);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v37, v6, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v42, &v6[v50], &_s10Foundation4UUIDVSgMd);
  if (__swift_getEnumTagSinglePayload(v6, 1, v18) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v42, &_s10Foundation4UUIDVSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_s10Foundation4UUIDVSgMd);
    if (__swift_getEnumTagSinglePayload(&v6[v50], 1, v18) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSgMd);
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  v51 = v90;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v6, v90, &_s10Foundation4UUIDVSgMd);
  v52 = __swift_getEnumTagSinglePayload(&v6[v50], 1, v18);
  v53 = v93;
  if (v52 == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v42, &_s10Foundation4UUIDVSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_s10Foundation4UUIDVSgMd);
    (*(v53 + 8))(v51, v18);
LABEL_23:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSg_ADtMd);
    goto LABEL_24;
  }

  v71 = v91;
  (*(v93 + 32))(v91, &v6[v50], v18);
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  LODWORD(v94) = dispatch thunk of static Equatable.== infix(_:_:)();
  v72 = v28;
  v73 = *(v53 + 8);
  v73(v71, v18);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v42, &_s10Foundation4UUIDVSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v97, &_s10Foundation4UUIDVSgMd);
  v73(v51, v18);
  v28 = v72;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSgMd);
  if (v94)
  {
LABEL_30:
    if ([objc_opt_self() isAnalysisEnabled])
    {
      v74 = [objc_allocWithZone(MEMORY[0x1E69DF298]) init];
      v75 = [v28 videoURL];
      v76 = [v75 URL];

      v77 = v86;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v78);
      v80 = v79;
      (*(v87 + 8))(v77, v88);
      v103 = closure #2 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:);
      v104 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v100 = 1107296256;
      v101 = thunk for @escaping @callee_guaranteed (@in_guaranteed URL, @unowned Double) -> ();
      v102 = &block_descriptor_130;
      v81 = _Block_copy(&aBlock);
      v82 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v83 = swift_allocObject();
      *(v83 + 16) = v82;
      *(v83 + 24) = v28;
      v103 = partial apply for closure #3 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:);
      v104 = v83;
      aBlock = MEMORY[0x1E69E9820];
      v100 = 1107296256;
      v101 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v102 = &block_descriptor_137;
      v84 = _Block_copy(&aBlock);
      v85 = v28;

      [v74 analyzeVideoFile:v80 useBlastdoor:0 progressHandler:v81 completionHandler:v84];
      _Block_release(v84);
      _Block_release(v81);
    }

    else
    {
      VideoMessageController.latestVideoMessageSandboxURL.setter([v28 videoURL]);
    }

    return;
  }

LABEL_24:
  if (one-time initialization token for videoMessaging != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, &static Logger.videoMessaging);
  v55 = v28;
  v56 = v98;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock = v60;
    *v59 = 136315394;
    v61 = [v55 uuid];
    v62 = v91;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    (*(v93 + 8))(v62, v18);
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &aBlock);

    *(v59 + 4) = v66;
    *(v59 + 12) = 2080;
    v105 = (v95)(v67);
    v68 = String.init<A>(reflecting:)();
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &aBlock);

    *(v59 + 14) = v70;
    _os_log_impl(&dword_1BBC58000, v57, v58, "Unexpected callback for message %s while in state %s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v60, -1, -1);
    MEMORY[0x1BFB23DF0](v59, -1, -1);
  }
}

uint64_t closure #1 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = type metadata accessor for UUID();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[23] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[24] = v8;
  v5[25] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:), v8, v7);
}

uint64_t closure #1 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)()
{
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_48();
  isa = v0[21].super.isa;
  v1 = v0[22].super.isa;
  v3 = v0[20].super.isa;
  v4 = [(objc_class *)v0[19].super.isa uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v0[26].super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(isa + 1))(v1, v3);
  v0[2].super.isa = v0;
  v0[3].super.isa = closure #1 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:);
  v5 = swift_continuation_init();
  v0[17].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
  v0[10].super.isa = MEMORY[0x1E69E9820];
  v0[11].super.isa = 1107296256;
  v0[12].super.isa = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13].super.isa = &block_descriptor_144;
  v0[14].super.isa = v5;
  v6 = OUTLINED_FUNCTION_46_16();
  [v6 v7];
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DEC8](v8);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  OUTLINED_FUNCTION_43_15();
  v5 = *(v4 + 200);
  v7 = *(v6 + 192);
  if (v8)
  {
    v9 = closure #1 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:);
  }

  else
  {
    v9 = closure #1 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 208);

  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, &static Logger.videoMessaging);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v5);
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_13();

  return v11();
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  swift_willThrow();

  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Logger.videoMessaging);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v5))
  {
    v6 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v6);
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_13();

  return v12();
}

void closure #2 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)(double a1)
{
  if (one-time initialization token for videoMessaging != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.videoMessaging);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&dword_1BBC58000, oslog, v3, "Evaluation percentage: %f", v4, 0xCu);
    MEMORY[0x1BFB23DF0](v4, -1, -1);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed URL, @unowned Double) -> ()(uint64_t a1, double a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v7, a2);

  return (*(v5 + 8))(v7, v4);
}

uint64_t closure #3 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)(int a1, void *a2, uint64_t a3, void *a4)
{
  LODWORD(v7) = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DispatchQoS();
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v32 = v9;
    v15 = a2;
    if (one-time initialization token for videoMessaging != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, &static Logger.videoMessaging);
    v17 = a2;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v7;
      v7 = v21;
      *v20 = 138412290;
      v22 = a2;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v7 = v23;
      _os_log_impl(&dword_1BBC58000, v18, v19, "Evaluation of video returned an error: %@", v20, 0xCu);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_sSo8NSObjectCSgMd);
      v24 = v7;
      LOBYTE(v7) = v31;
      MEMORY[0x1BFB23DF0](v24, -1, -1);
      MEMORY[0x1BFB23DF0](v20, -1, -1);
    }

    else
    {
    }

    v9 = v32;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v25 = static OS_dispatch_queue.main.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = v7 & 1;
  *(v26 + 32) = a4;
  aBlock[4] = partial apply for closure #1 in closure #3 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_150;
  v27 = _Block_copy(aBlock);

  v28 = a4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v14, v11, v27);
  _Block_release(v27);

  (*(v9 + 8))(v11, v8);
  return (*(v33 + 8))(v14, v34);
}

void closure #1 in closure #3 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)(uint64_t a1, char a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_isVideoSensitive;
    swift_beginAccess();
    v6[v7] = a2 & 1;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    VideoMessageController.latestVideoMessageSandboxURL.setter([a3 videoURL]);
  }
}

id @nonobjc AVAudioPlayer.init(contentsOf:)(uint64_t a1)
{
  v2 = v1;
  v16 = *MEMORY[0x1E69E9840];
  URL._bridgeToObjectiveC()(v16);
  v5 = v4;
  v15 = 0;
  v6 = [v2 initWithContentsOfURL:v4 error:&v15];

  v7 = v15;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    OUTLINED_FUNCTION_7_0();
    v10 = *(v9 + 8);
    v11 = v7;
    v10(a1, v8);
  }

  else
  {
    v12 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    type metadata accessor for URL();
    OUTLINED_FUNCTION_7_0();
    (*(v13 + 8))(a1);
  }

  return v6;
}

id @nonobjc TUMomentsMessageSendRequest.init(sessionUUID:conversationID:senderHandle:destinationHandles:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = UUID._bridgeToObjectiveC()().super.isa;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  v10 = Set._bridgeToObjectiveC()().super.isa;

  v11 = [v4 initWithSessionUUID:isa conversationID:v9 senderHandle:a3 destinationHandles:v10];

  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 8);
  v13(a2, v12);
  v13(a1, v12);
  return v11;
}

id outlined bridged method (mbbnn) of @objc NSBundle.url(forResource:withExtension:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = MEMORY[0x1BFB209B0]();

  v9 = MEMORY[0x1BFB209B0](a3, a4);

  v10 = [a5 URLForResource:v8 withExtension:v9];

  return v10;
}

uint64_t objectdestroy_14Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  OUTLINED_FUNCTION_37_0();

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:)()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_5_0(v3);

  return closure #3 in VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:)(v4, v5, v6, v2);
}

unint64_t lazy protocol witness table accessor for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors()
{
  result = lazy protocol witness table cache variable for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors;
  if (!lazy protocol witness table cache variable for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors;
  if (!lazy protocol witness table cache variable for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessageController.UnrecoverableErrors and conformance VideoMessageController.UnrecoverableErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoMessageController.VideoMessageError and conformance VideoMessageController.VideoMessageError()
{
  result = lazy protocol witness table cache variable for type VideoMessageController.VideoMessageError and conformance VideoMessageController.VideoMessageError;
  if (!lazy protocol witness table cache variable for type VideoMessageController.VideoMessageError and conformance VideoMessageController.VideoMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessageController.VideoMessageError and conformance VideoMessageController.VideoMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VideoMessageController.VideoMessageError and conformance VideoMessageController.VideoMessageError;
  if (!lazy protocol witness table cache variable for type VideoMessageController.VideoMessageError and conformance VideoMessageController.VideoMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessageController.VideoMessageError and conformance VideoMessageController.VideoMessageError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoMessageController.State and conformance VideoMessageController.State()
{
  result = lazy protocol witness table cache variable for type VideoMessageController.State and conformance VideoMessageController.State;
  if (!lazy protocol witness table cache variable for type VideoMessageController.State and conformance VideoMessageController.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessageController.State and conformance VideoMessageController.State);
  }

  return result;
}

void type metadata completion function for VideoMessageController()
{
  type metadata accessor for Published<VideoMessageController.State>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<URL?>();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<URL?>()
{
  if (!lazy cache variable for type metadata for Published<URL?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLVSgMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<URL?>);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for VideoMessageController.UnrecoverableErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for VideoMessageController.VideoMessageError(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for VideoMessageController.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VideoMessageController.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_319();

  return closure #1 in closure #1 in VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)(v2, v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in VideoMessageController.complete(sendingTo:sendingFrom:in:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);
  OUTLINED_FUNCTION_22(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return closure #1 in closure #1 in VideoMessageController.complete(sendingTo:sendingFrom:in:)(a1, v5);
}

uint64_t outlined assign with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_101_2()
{

  VideoMessageController.momentsController.getter();
}

uint64_t OUTLINED_FUNCTION_102_1()
{
}

void specialized Sequence.forEach(_:)(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = v3;
  v51 = a3;
  v47 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantReactionVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = a1;
  v43 = &v41 - v7;
  v8 = 0;
  v9 = *(a1 + 16);
  v10 = a1;
  v41 = v9;
  while (v9 != v8)
  {
    v11 = type metadata accessor for ParticipantReaction(0);
    v12 = v11;
    v13 = *(v11 - 8);
    v49 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v50 = *(v13 + 72);
    v48 = v10 + v49 + v50 * v8;
    if (v47)
    {
      v46 = v11;
      MEMORY[0x1EEE9AC00](v11);
      *(&v41 - 2) = v14;
      v15 = v51;
      v16 = v4;
      v17 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #1 in ParticipantGridViewController.update(participant:broadcastingState:), (&v41 - 4));
      v18 = *v15;
      v19 = *(*v15 + 16);
      if (v19 < v17)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v20 = v17;
      if (v17 < 0)
      {
        goto LABEL_32;
      }

      v21 = v17 - v19;
      v22 = v17;
      if (__OFADD__(v19, v17 - v19))
      {
        goto LABEL_33;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v51 = v18;
      v44 = v8;
      v45 = v16;
      if (!isUniquelyReferenced_nonNull_native || v22 > *(v18 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v18 = v24;
        *v51 = v24;
      }

      v25 = v18 + v49;
      v26 = v20 * v50;
      v27 = v18 + v49 + v20 * v50;
      swift_arrayDestroy();
      if (v19 != v20)
      {
        if (v26 < v19 * v50 || v27 >= v25 + v19 * v50 + (*(v18 + 16) - v19) * v50)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v26 != v19 * v50)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v32 = *(v18 + 16);
        v33 = __OFADD__(v32, v21);
        v34 = v32 + v21;
        if (v33)
        {
          goto LABEL_34;
        }

        *(v18 + 16) = v34;
      }

      *v51 = v18;
      v9 = v41;
      v10 = v42;
      v8 = v44;
      v4 = v45;
    }

    else
    {
      v29 = *v51;
      MEMORY[0x1EEE9AC00](v11);
      *(&v41 - 2) = v30;

      v31 = v43;
      specialized Sequence.first(where:)(partial apply for closure #1 in ParticipantGridViewController.updateProminenceEMA(withParticipant:ema:audioPriority:videoPriority:), v29, v43);

      LODWORD(v29) = __swift_getEnumTagSinglePayload(v31, 1, v12);
      outlined destroy of IDView<AvatarStackView, [UUID]>(v31, &_s15ConversationKit19ParticipantReactionVSgMd);
      if (v29 != 1)
      {
        goto LABEL_29;
      }
    }

    v35 = v51;
    v36 = *v51;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *v35 = v36;
    if ((v37 & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v36 = v39;
      *v51 = v39;
    }

    v38 = *(v36 + 16);
    if (v38 >= *(v36 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v36 = v40;
      *v51 = v40;
    }

    *(v36 + 16) = v38 + 1;
    outlined init with copy of ParticipantReaction();
LABEL_29:
    ++v8;
  }
}

void SessionActivationRequestNotice.fullSentence.getter()
{
  OUTLINED_FUNCTION_29();
  v2 = type metadata accessor for AttributedString.AttributeMergePolicy();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_79_0();
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_82();
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  OUTLINED_FUNCTION_11();
  v10._countAndFlagsBits = 0x100000000000001ALL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  v11 = (v0 + *(type metadata accessor for SessionActivationRequestNotice(0) + 60));
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14._countAndFlagsBits = (*(v13 + 80))(v12, v13);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v14);

  OUTLINED_FUNCTION_172();
  String.LocalizationValue.init(stringInterpolation:)();
  AttributedString.init(cnkLocalized:)();
  if (one-time initialization token for foregroundContainer != -1)
  {
    OUTLINED_FUNCTION_22_39();
  }

  v15 = type metadata accessor for AttributeContainer();
  __swift_project_value_buffer(v15, static AttributedStrings.Notices.foregroundContainer);
  (*(v4 + 104))(v1, *MEMORY[0x1E69686E0], v2);
  OUTLINED_FUNCTION_208();
  AttributedString.mergeAttributes(_:mergePolicy:)();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_30_0();
}

uint64_t SessionActivationRequestNotice.title.getter()
{
  v0 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_5_5();
  v1.super.isa = v0;
  OUTLINED_FUNCTION_17_0(0xD000000000000016, 0x80000001BC4F5750, v2, v3, v1);
  OUTLINED_FUNCTION_18_8();

  return OUTLINED_FUNCTION_15_14();
}

void SessionActivationRequestNotice.attributedSubtitle.getter()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for AttributeContainer();
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_1();
  v3 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_5_5();
  v4.super.isa = v3;
  OUTLINED_FUNCTION_17_0(0xD000000000000014, 0x80000001BC4F9500, v5, v6, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v7 = OUTLINED_FUNCTION_13_12();
  *(v7 + 16) = xmmword_1BC4BA940;
  v8 = (v0 + *(type metadata accessor for SessionActivationRequestNotice(0) + 60));
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v9 = OUTLINED_FUNCTION_7_26();
  v11 = v10(v9);
  v13 = v12;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v7 + 32) = v11;
  *(v7 + 40) = v13;
  static String.localizedStringWithFormat(_:_:)();

  AttributeContainer.init()();
  OUTLINED_FUNCTION_209();
  AttributedString.init(_:attributes:)();
  OUTLINED_FUNCTION_49();
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1)
{
  return specialized BidirectionalCollection.last.getter(a1, type metadata accessor for HUDActivityManager.BannerUpdate);
}

{
  return specialized BidirectionalCollection.last.getter(a1, type metadata accessor for Participant);
}

{
  if (*(a1 + 16))
  {
  }

  return OUTLINED_FUNCTION_46();
}

{
  return specialized BidirectionalCollection.last.getter(a1, type metadata accessor for ConversationControlsAction);
}

{
  if (*(a1 + 16))
  {
  }

  return OUTLINED_FUNCTION_46();
}

{
  return specialized BidirectionalCollection.last.getter(a1, type metadata accessor for CaptionSectioner.Caption);
}

{
  return specialized BidirectionalCollection.last.getter(a1, type metadata accessor for CaptionSectioner.SpeakerSection);
}

{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + v1 + 31);
  }

  else
  {
    return 8;
  }
}

uint64_t specialized BidirectionalCollection.last.getter(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
      }
    }

    v3 = OUTLINED_FUNCTION_38_2();
    return MEMORY[0x1BFB22010](v3);
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, void (*a2)(void))
{
  if (*(a1 + 16))
  {
    a2(0);
    outlined init with copy of ParticipantReaction();
    OUTLINED_FUNCTION_40_18();
  }

  else
  {
    a2(0);
    v2 = OUTLINED_FUNCTION_57_11();
  }

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t specialized BidirectionalCollection.last.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for IndexPath();
    OUTLINED_FUNCTION_7_0();
    (*(v7 + 16))(a2, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6);
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    type metadata accessor for IndexPath();
    v8 = OUTLINED_FUNCTION_57_11();
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

double specialized BidirectionalCollection.last.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    outlined init with copy of Activity();
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

char *specialized BidirectionalCollection.last.getter(unint64_t a1, void (*a2)(char *, BOOL, unint64_t))
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v5 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v5 + 32);
      }
    }

    v6 = OUTLINED_FUNCTION_45_1();
    return MEMORY[0x1BFB22010](v6);
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void AccountUpdateNotice.fullSentence.getter()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v93 = type metadata accessor for AttributedString.InterpolationOptions();
  OUTLINED_FUNCTION_1();
  v91 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_40();
  v92 = v9;
  OUTLINED_FUNCTION_4_24();
  v10 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_40();
  v94 = v12;
  OUTLINED_FUNCTION_4_24();
  v13 = type metadata accessor for AttributedString.AttributeMergePolicy();
  OUTLINED_FUNCTION_1();
  v101 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_79_0();
  v100 = type metadata accessor for AttributeContainer();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v96 = v18;
  v97 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  v95 = v19 - v20;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v21);
  v99 = v86 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_96();
  v26 = type metadata accessor for Participant(v25);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7_10();
  v28 = *(v1 + 1);
  OUTLINED_FUNCTION_120_2();
  specialized BidirectionalCollection.last.getter(v28, v29);
  OUTLINED_FUNCTION_115(v1, 1, v26);
  if (!v30)
  {
    v98 = v13;
    v86[3] = v4;
    OUTLINED_FUNCTION_3_119();
    OUTLINED_FUNCTION_38_2();
    _s15ConversationKit11ParticipantVWObTm_4();
    v34 = *(v28 + 16);
    GondolaControlsRecipeGenerator.isPresentingFullScreenCallUI.getter();
    v86[2] = v0;
    Participant.contactDetails.getter();
    v35 = v102;

    Participant.name(_:)();

    AttributeContainer.init()();
    OUTLINED_FUNCTION_243();
    v36 = AttributedString.init(_:attributes:)();
    if (one-time initialization token for subjectContainer != -1)
    {
      v36 = OUTLINED_FUNCTION_20_41();
    }

    v86[1] = v34 - 1;
    OUTLINED_FUNCTION_267_0(v36, static AttributedStrings.Notices.subjectContainer);
    v37 = *MEMORY[0x1E69686E8];
    v38 = v101;
    v39 = v101 + 104;
    v88 = *(v101 + 104);
    v88(v2, v37, v98);
    OUTLINED_FUNCTION_29_6();
    AttributedString.mergeAttributes(_:mergePolicy:)();
    v41 = *(v38 + 8);
    v40 = v38 + 8;
    v42 = OUTLINED_FUNCTION_1_5();
    v41(v42);
    v43 = *v1;
    v89 = v39;
    v90 = v0;
    v87 = v41;
    if (!v43)
    {
      v91 += 8;
      OUTLINED_FUNCTION_205_1();
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v51._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v51);
      v102 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_0_151();
      lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v52, v53);
      v54 = OUTLINED_FUNCTION_243();
      __swift_instantiateConcreteTypeFromMangledNameV2(v54);
      OUTLINED_FUNCTION_221(&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A]);
      OUTLINED_FUNCTION_78_6();
      OUTLINED_FUNCTION_76_6();
      OUTLINED_FUNCTION_264_0();
      v55 = OUTLINED_FUNCTION_237_1();
      v56(v55);
      if (v34 < 2)
      {
        v74._countAndFlagsBits = 0x64656E696F6A20;
        v74._object = 0xE700000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v74);
        OUTLINED_FUNCTION_222_1();
        OUTLINED_FUNCTION_64_11();
        AttributedString.init(cnkLocalized:)();
      }

      else
      {
        OUTLINED_FUNCTION_180_2();
        OUTLINED_FUNCTION_198_1();
        OUTLINED_FUNCTION_131_0();
        v57._countAndFlagsBits = OUTLINED_FUNCTION_231_1();
        v57._object = 0xEE0064656E696F6ALL;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v57);
        OUTLINED_FUNCTION_222_1();
        OUTLINED_FUNCTION_64_11();
        AttributedString.init(conversationControlsLocalized:comment:)();
      }

      v75 = v98;
LABEL_23:
      if (one-time initialization token for foregroundContainer != -1)
      {
        v58 = OUTLINED_FUNCTION_22_39();
      }

      OUTLINED_FUNCTION_267_0(v58, static AttributedStrings.Notices.foregroundContainer);
      v88(v2, *MEMORY[0x1E69686E0], v75);
      OUTLINED_FUNCTION_29_6();
      AttributedString.mergeAttributes(_:mergePolicy:)();
      v82 = OUTLINED_FUNCTION_40_2();
      v87(v82);
      AttributedString.replaceLinks(with:)();
      v83 = OUTLINED_FUNCTION_173_1();
      v84(v83);
      OUTLINED_FUNCTION_5_103();
      _s15ConversationKit11ParticipantVWOhTm_12();
      OUTLINED_FUNCTION_93_1();
      v85();
      goto LABEL_26;
    }

    v101 = v40;
    if (v43 == 1)
    {
      if (v34 < 2)
      {
        OUTLINED_FUNCTION_205_1();
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v67._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v67);
        v102 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_0_151();
        lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v68, v69);
        v70 = OUTLINED_FUNCTION_243();
        __swift_instantiateConcreteTypeFromMangledNameV2(v70);
        OUTLINED_FUNCTION_221(&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A]);
        OUTLINED_FUNCTION_42_22();
        OUTLINED_FUNCTION_112();
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
        v71 = OUTLINED_FUNCTION_144_1();
        v72(v71);
        v73._countAndFlagsBits = 0x7466656C20;
        v73._object = 0xE500000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v73);
        OUTLINED_FUNCTION_222_1();
        OUTLINED_FUNCTION_64_11();
        AttributedString.init(cnkLocalized:)();
LABEL_22:
        v75 = v98;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_205_1();
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v44._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v44);
      v102 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_0_151();
      lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v45, v46);
      v47 = OUTLINED_FUNCTION_243();
      __swift_instantiateConcreteTypeFromMangledNameV2(v47);
      OUTLINED_FUNCTION_221(&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A]);
      OUTLINED_FUNCTION_42_22();
      OUTLINED_FUNCTION_112();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
      v48 = OUTLINED_FUNCTION_144_1();
      v49(v48);
      OUTLINED_FUNCTION_180_2();
      OUTLINED_FUNCTION_198_1();
      OUTLINED_FUNCTION_131_0();
      v50._countAndFlagsBits = OUTLINED_FUNCTION_231_1();
      v50._object = 0xEC0000007466656CLL;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v50);
      OUTLINED_FUNCTION_222_1();
      OUTLINED_FUNCTION_64_11();
    }

    else
    {
      if (v34 < 2)
      {
        OUTLINED_FUNCTION_205_1();
        OUTLINED_FUNCTION_266_0();
        v76._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v76);
        v102 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_0_151();
        lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v77, v78);
        v79 = OUTLINED_FUNCTION_243();
        __swift_instantiateConcreteTypeFromMangledNameV2(v79);
        OUTLINED_FUNCTION_221(&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A]);
        OUTLINED_FUNCTION_42_22();
        OUTLINED_FUNCTION_112();
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
        v80 = OUTLINED_FUNCTION_144_1();
        v81(v80);
        OUTLINED_FUNCTION_11();
        v65 = 0xD000000000000011;
      }

      else
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v59._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v59);
        v102 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_0_151();
        lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v60, v61);
        v62 = OUTLINED_FUNCTION_243();
        __swift_instantiateConcreteTypeFromMangledNameV2(v62);
        OUTLINED_FUNCTION_221(&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A]);
        OUTLINED_FUNCTION_42_22();
        OUTLINED_FUNCTION_112();
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
        v63 = OUTLINED_FUNCTION_144_1();
        v64(v63);
        OUTLINED_FUNCTION_180_2();
        OUTLINED_FUNCTION_198_1();
        OUTLINED_FUNCTION_131_0();
        v65 = 0xD000000000000018;
        v66 = 0x80000001BC50D250;
      }

      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v65);
      OUTLINED_FUNCTION_222_1();
      OUTLINED_FUNCTION_64_11();
    }

    AttributedString.init(conversationControlsLocalized:comment:)();
    goto LABEL_22;
  }

  outlined destroy of IDView<AvatarStackView, [UUID]>(v1, &_s15ConversationKit11ParticipantVSgMd);
  String.LocalizationValue.init(stringLiteral:)();
  AttributedString.init(cnkLocalized:)();
  if (one-time initialization token for subjectContainer != -1)
  {
    v31 = OUTLINED_FUNCTION_20_41();
  }

  OUTLINED_FUNCTION_267_0(v31, static AttributedStrings.Notices.subjectContainer);
  (*(v101 + 104))(v2, *MEMORY[0x1E69686E0], v13);
  OUTLINED_FUNCTION_29_6();
  AttributedString.mergeAttributes(_:mergePolicy:)();
  v32 = OUTLINED_FUNCTION_40_2();
  v33(v32);
LABEL_26:
  OUTLINED_FUNCTION_30_0();
}

void AccountUpdateNotice.title.getter()
{
  OUTLINED_FUNCTION_29();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for Participant(v5);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_57();
  v7 = *(v1 + 8);
  OUTLINED_FUNCTION_120_2();
  specialized BidirectionalCollection.last.getter(v7, v8);
  OUTLINED_FUNCTION_115(v0, 1, v2);
  if (v9)
  {
    outlined destroy of IDView<AvatarStackView, [UUID]>(v0, &_s15ConversationKit11ParticipantVSgMd);
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, &static Logger.conversationControls);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v14, v15, "No participant for accountUpdateNotice");
      MEMORY[0x1BFB23DF0](v13, -1, -1);
    }

    v16 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_5_5();
    v17 = OUTLINED_FUNCTION_261_1();
    OUTLINED_FUNCTION_48_1(v17, v18, v19, v20);
    OUTLINED_FUNCTION_213_1();
  }

  else
  {
    OUTLINED_FUNCTION_3_119();
    OUTLINED_FUNCTION_46();
    v21 = _s15ConversationKit11ParticipantVWObTm_4();
    MEMORY[0x1EEE9AC00](v21);
    v33[2] = v1;
    v22 = _sSTsE5count5whereSiSb7ElementQzqd__YKXE_tqd__YKs5ErrorRd__lFSay15ConversationKit11ParticipantVG_s5NeverOTg5(partial apply for closure #1 in AccountUpdateNotice.title.getter, v33, v7);
    if (v22 < 1)
    {
      Participant.contactDetails.getter();
      v32 = v34;

      OUTLINED_FUNCTION_44_0();
      Participant.name(_:)();
      OUTLINED_FUNCTION_213_1();
    }

    else
    {
      v23 = v22;
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_261_1();
      String.localizedConversationControls.getter();
      OUTLINED_FUNCTION_187();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1BC4BAA20;
      Participant.contactDetails.getter();
      v25 = v34;

      Participant.name(_:)();
      v27 = v26;
      v29 = v28;

      *(v24 + 56) = MEMORY[0x1E69E6158];
      v30 = lazy protocol witness table accessor for type String and conformance String();
      *(v24 + 32) = v27;
      *(v24 + 40) = v29;
      v31 = MEMORY[0x1E69E65A8];
      *(v24 + 96) = MEMORY[0x1E69E6530];
      *(v24 + 104) = v31;
      *(v24 + 64) = v30;
      *(v24 + 72) = v23;
      OUTLINED_FUNCTION_1_5();
      static String.localizedStringWithFormat(_:_:)();
      OUTLINED_FUNCTION_213_1();
    }

    OUTLINED_FUNCTION_5_103();
    _s15ConversationKit11ParticipantVWOhTm_12();
  }

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_30_0();
}

uint64_t AccountUpdateNotice.attributedSubtitle.getter()
{
  OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for AttributeContainer();
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  if (*v0)
  {
    if (*v0 == 1)
    {
      v3 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_5_5();
      v6 = 1952867660;
      v7 = 0xE400000000000000;
    }

    else
    {
      v3 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_5_5();
      v6 = OUTLINED_FUNCTION_193_0();
    }
  }

  else
  {
    v3 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v7 = 0xE600000000000000;
  }

  v8.super.isa = v3;
  OUTLINED_FUNCTION_17_0(v6, v7, v4, v5, v8);
  OUTLINED_FUNCTION_98_3();

  AttributeContainer.init()();
  OUTLINED_FUNCTION_40_2();
  return AttributedString.init(_:attributes:)();
}

void ReactionNotice.fullSentence.getter()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40();
  v73 = v6;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for AttributedString.InterpolationOptions();
  OUTLINED_FUNCTION_1();
  v71 = v7;
  v72 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_10();
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_49_3();
  v11 = type metadata accessor for AttributedString.AttributeMergePolicy();
  OUTLINED_FUNCTION_1();
  v76 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40();
  v74 = v14;
  OUTLINED_FUNCTION_4_24();
  v75 = type metadata accessor for AttributeContainer();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v16 = OUTLINED_FUNCTION_82();
  v17 = type metadata accessor for ParticipantReaction(v16) - 8;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_57();
  v18 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v70 = v1;
  v26 = *v1;
  v27 = *(*v1 + 16);
  if (v27 == 1)
  {
    v66 = v25;
    v67 = v11;
    v68 = v3;
    v69 = v18;
    v29 = &v64 - v24;
    outlined init with copy of ParticipantReaction();
    Participant.contactDetails.getter();
    v30 = v77;

    Participant.name(_:)();

    OUTLINED_FUNCTION_5_103();
    _s15ConversationKit11ParticipantVWOhTm_12();
    AttributeContainer.init()();
    OUTLINED_FUNCTION_244_1();
    AttributedString.init(_:attributes:)();
    if (one-time initialization token for subjectContainer != -1)
    {
      OUTLINED_FUNCTION_20_41();
    }

    __swift_project_value_buffer(v75, static AttributedStrings.Notices.subjectContainer);
    v31 = v76;
    v32 = v74;
    v11 = v67;
    (*(v76 + 104))(v74, *MEMORY[0x1E69686E8], v67);
    AttributedString.mergeAttributes(_:mergePolicy:)();
    (*(v31 + 8))(v32, v11);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v33._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v33);
    v77 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_0_151();
    v64 = lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v34, v35);
    v36 = OUTLINED_FUNCTION_15_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(v36);
    OUTLINED_FUNCTION_30_20();
    lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v37, v38);
    OUTLINED_FUNCTION_233_1();
    v65 = v29;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
    v39 = *(v72 + 8);
    v40 = OUTLINED_FUNCTION_29_6();
    v39(v40);
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_254_1();
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v41);
    ReactionNotice.reactionSymbols.getter(v22);
    v77 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_233_1();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
    v42 = OUTLINED_FUNCTION_29_6();
    v39(v42);
    v43 = *(v66 + 8);
    v44 = v69;
    v43(v22, v69);
    v45._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v45);
    String.LocalizationValue.init(stringInterpolation:)();
    OUTLINED_FUNCTION_265_0();
    v28 = (v43)(v65, v44);
  }

  else if (v27)
  {
    v46 = &v64 - v24;
    v69 = v18;
    v47 = v25;
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v48._countAndFlagsBits = 23390;
    v48._object = 0xE200000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v48);
    v77 = *(v26 + 16);
    OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_11();
    v49._countAndFlagsBits = 0xD000000000000032;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v49);
    ReactionNotice.reactionSymbols.getter(v46);
    v77 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_0_151();
    lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v50, v51);
    v52 = OUTLINED_FUNCTION_15_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(v52);
    OUTLINED_FUNCTION_30_20();
    lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v53, v54);
    OUTLINED_FUNCTION_78_6();
    v55 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OUTLINED_FUNCTION_258_0();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
    (*(v72 + 8))(v0, v55);
    v56 = *(v47 + 8);
    v57 = v69;
    v56(v46, v69);
    v58._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v58);
    v59 = v73;
    String.LocalizationValue.init(stringInterpolation:)();
    KeyPath = swift_getKeyPath();
    _s10Foundation16AttributedStringV15ConversationKitE29conversationControlsLocalized9includingACSSAAE17LocalizationValueV_s7KeyPathCyAA15AttributeScopesOxmGtcAA0N5ScopeRzlufCAlDE0dE10AttributesV_Tt2g5(v59, KeyPath, v3);
    AttributedString.applyContainer()();
    v61 = OUTLINED_FUNCTION_173_1();
    (v56)(v61);
    v28 = (*(v47 + 32))(v3, v46, v57);
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
    v28 = AttributedString.init(stringLiteral:)();
  }

  if (one-time initialization token for foregroundContainer != -1)
  {
    v28 = OUTLINED_FUNCTION_22_39();
  }

  OUTLINED_FUNCTION_267_0(v28, static AttributedStrings.Notices.foregroundContainer);
  v62 = v76;
  v63 = v74;
  (*(v76 + 104))(v74, *MEMORY[0x1E69686E0], v11);
  OUTLINED_FUNCTION_29_6();
  AttributedString.mergeAttributes(_:mergePolicy:)();
  (*(v62 + 8))(v63, v11);
  OUTLINED_FUNCTION_30_0();
}

uint64_t ReactionNotice.title.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantReactionVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_8_9();
  v5 = type metadata accessor for Participant(v4);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v7);
  v8 = *v1;
  specialized BidirectionalCollection.last.getter(*v1, type metadata accessor for ParticipantReaction);
  v9 = type metadata accessor for ParticipantReaction(0);
  OUTLINED_FUNCTION_115(v0, 1, v9);
  if (v10)
  {
    outlined destroy of IDView<AvatarStackView, [UUID]>(v0, &_s15ConversationKit19ParticipantReactionVSgMd);
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, &static Logger.conversationControls);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v15, v16, "No participant for ReactionNotice");
      MEMORY[0x1BFB23DF0](v14, -1, -1);
    }

    v17 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_48_1(0xD000000000000013, 0x80000001BC50D3E0, v18, v19);
    OUTLINED_FUNCTION_16_6();
  }

  else
  {
    OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_44_0();
    outlined init with copy of ParticipantReaction();
    _s15ConversationKit11ParticipantVWOhTm_12();
    OUTLINED_FUNCTION_3_119();
    _s15ConversationKit11ParticipantVWObTm_4();
    v20 = *(v8 + 16);
    if (v20 < 2)
    {
      Participant.contactDetails.getter();

      OUTLINED_FUNCTION_29_6();
      Participant.name(_:)();
      OUTLINED_FUNCTION_16_6();
    }

    else
    {
      String.localizedConversationControls.getter();
      OUTLINED_FUNCTION_305();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v21 = OUTLINED_FUNCTION_13_12();
      v22 = MEMORY[0x1E69E6530];
      *(v21 + 16) = xmmword_1BC4BA940;
      v23 = MEMORY[0x1E69E65A8];
      *(v21 + 56) = v22;
      *(v21 + 64) = v23;
      *(v21 + 32) = v20;
      OUTLINED_FUNCTION_46();
      static String.localizedStringWithFormat(_:_:)();
      OUTLINED_FUNCTION_16_6();
    }

    OUTLINED_FUNCTION_5_103();
    _s15ConversationKit11ParticipantVWOhTm_12();
  }

  return OUTLINED_FUNCTION_44_0();
}

void ReactionNotice.attributedSubtitle.getter()
{
  OUTLINED_FUNCTION_29();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_4_24();
  v4 = type metadata accessor for AttributedString.InterpolationOptions();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_82();
  v17 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_49_3();
  v11 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = OUTLINED_FUNCTION_166_0();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  ReactionNotice.reactionSymbols.getter(v1);
  OUTLINED_FUNCTION_0_151();
  lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
  lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A], &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
  (*(v6 + 8))(v0, v4);
  (*(v9 + 8))(v1, v17);
  v16._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  String.LocalizationValue.init(stringInterpolation:)();
  OUTLINED_FUNCTION_265_0();
  OUTLINED_FUNCTION_30_0();
}

uint64_t static SessionActionNotice.NoticeType.== infix(_:_:)(uint64_t *a1, int64x2_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v73[0] = *a1;
  v73[1] = v2;
  v73[2] = v5;
  v73[3] = v4;
  v74 = v6;
  v75 = v7;
  v8 = v6.i64[1];
  v9 = v7.i64[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      if (v7.i64[0] >> 62 != 1)
      {
        goto LABEL_102;
      }

      v70 = v3;
      v71 = v2;
      v72 = v5;
      v68 = v6;
      v69 = v7.i8[0];
      v41 = OUTLINED_FUNCTION_145_1();
      outlined copy of SessionActionNotice.NoticeType(v41, v42, v43);
      v44 = OUTLINED_FUNCTION_23_40();
      outlined copy of SessionActionNotice.NoticeType(v44, v45, v46);
      v47 = OUTLINED_FUNCTION_145_1();
      outlined copy of SessionActionNotice.NoticeType(v47, v48, v49);
      v50 = OUTLINED_FUNCTION_23_40();
      outlined copy of SessionActionNotice.NoticeType(v50, v51, v52);
      v29 = static SessionActionNotice.QueueItemType.== infix(_:_:)(&v70, v68.i64);
      outlined destroy of IDView<AvatarStackView, [UUID]>(v73, &_s15ConversationKit19SessionActionNoticeV0E4TypeO_AEtMd);
      v53 = OUTLINED_FUNCTION_145_1();
      outlined consume of SessionActionNotice.NoticeType(v53, v54, v55);
      v56 = OUTLINED_FUNCTION_23_40();
      outlined consume of SessionActionNotice.NoticeType(v56, v57, v58);
      return v29 & 1;
    case 2uLL:
      if (v7.i64[0] >> 62 != 2)
      {
        goto LABEL_102;
      }

      v30 = v3 == v6.i64[0] && v2 == v6.i64[1];
      if (!v30)
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v32 = OUTLINED_FUNCTION_73_8();
        outlined copy of SessionActionNotice.NoticeType(v32, v33, v34);
        v35 = OUTLINED_FUNCTION_23_40();
        outlined copy of SessionActionNotice.NoticeType(v35, v36, v37);
        outlined destroy of IDView<AvatarStackView, [UUID]>(v73, &_s15ConversationKit19SessionActionNoticeV0E4TypeO_AEtMd);
        return v31 & 1;
      }

      outlined copy of SessionActionNotice.NoticeType(v3, v2, v7.u64[0]);
      v62 = OUTLINED_FUNCTION_23_40();
      outlined copy of SessionActionNotice.NoticeType(v62, v63, v64);
      goto LABEL_101;
    case 3uLL:
      OUTLINED_FUNCTION_133();
      if (v30 && !(v2 | v3 | v4))
      {
        if (v7.i64[0] >> 62 != 3 || v7.i64[0] != 0xC000000000000000 || (v8 | v6.i64[0] | v9) != 0)
        {
          goto LABEL_102;
        }

LABEL_101:
        outlined destroy of IDView<AvatarStackView, [UUID]>(v73, &_s15ConversationKit19SessionActionNoticeV0E4TypeO_AEtMd);
        v29 = 1;
        return v29 & 1;
      }

      if (v3 != 1 || v2 || (OUTLINED_FUNCTION_133(), !v30) || v4)
      {
        if (v3 != 2 || v2 || (OUTLINED_FUNCTION_133(), !v30) || v4)
        {
          if (v3 != 3 || v2 || (OUTLINED_FUNCTION_133(), !v30) || v4)
          {
            if (v3 != 4 || v2 || (OUTLINED_FUNCTION_133(), !v30) || v4)
            {
              if (v3 != 5 || v2 || (OUTLINED_FUNCTION_133(), !v30) || v4)
              {
                if (v3 != 6 || v2 || (OUTLINED_FUNCTION_133(), !v30) || v4)
                {
                  if (v3 != 7 || v2 || (OUTLINED_FUNCTION_133(), !v30) || v4)
                  {
                    if (v3 != 8 || v2 || (OUTLINED_FUNCTION_133(), !v30) || v4)
                    {
                      if (v3 != 9 || v2 || (OUTLINED_FUNCTION_133(), !v30) || v4)
                      {
                        OUTLINED_FUNCTION_41_17();
                        if (!v59)
                        {
                          goto LABEL_102;
                        }

                        v60 = vceqq_s64(v7, xmmword_1BC4CB170);
                        v61 = xmmword_1BC4D2F60;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_41_17();
                        if (!v59)
                        {
                          goto LABEL_102;
                        }

                        v60 = vceqq_s64(v7, xmmword_1BC4CB170);
                        v61 = xmmword_1BC4D67B0;
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_41_17();
                      if (!v59)
                      {
                        goto LABEL_102;
                      }

                      v60 = vceqq_s64(v7, xmmword_1BC4CB170);
                      v61 = xmmword_1BC4D67C0;
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_41_17();
                    if (!v59)
                    {
                      goto LABEL_102;
                    }

                    v60 = vceqq_s64(v7, xmmword_1BC4CB170);
                    v61 = xmmword_1BC4D67D0;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_41_17();
                  if (!v59)
                  {
                    goto LABEL_102;
                  }

                  v60 = vceqq_s64(v7, xmmword_1BC4CB170);
                  v61 = xmmword_1BC4D67E0;
                }
              }

              else
              {
                OUTLINED_FUNCTION_41_17();
                if (!v59)
                {
                  goto LABEL_102;
                }

                v60 = vceqq_s64(v7, xmmword_1BC4CB170);
                v61 = xmmword_1BC4D67F0;
              }
            }

            else
            {
              OUTLINED_FUNCTION_41_17();
              if (!v59)
              {
                goto LABEL_102;
              }

              v60 = vceqq_s64(v7, xmmword_1BC4CB170);
              v61 = xmmword_1BC4D6800;
            }
          }

          else
          {
            OUTLINED_FUNCTION_41_17();
            if (!v59)
            {
              goto LABEL_102;
            }

            v60 = vceqq_s64(v7, xmmword_1BC4CB170);
            v61 = xmmword_1BC4B6480;
          }
        }

        else
        {
          OUTLINED_FUNCTION_41_17();
          if (!v59)
          {
            goto LABEL_102;
          }

          v60 = vceqq_s64(v7, xmmword_1BC4CB170);
          v61 = xmmword_1BC4D6810;
        }
      }

      else
      {
        OUTLINED_FUNCTION_41_17();
        if (!v59)
        {
          goto LABEL_102;
        }

        v60 = vceqq_s64(v7, xmmword_1BC4CB170);
        v61 = xmmword_1BC4C9460;
      }

      if ((vaddvq_s32(vbicq_s8(xmmword_1BC4D67A0, vuzp1q_s32(vceqq_s64(v6, v61), v60))) & 0xF) == 0)
      {
        goto LABEL_101;
      }

LABEL_102:
      outlined copy of SessionActionNotice.NoticeType(v6.i64[0], v8, v7.u64[0]);
      v65 = OUTLINED_FUNCTION_23_40();
      outlined copy of SessionActionNotice.NoticeType(v65, v66, v67);
      outlined destroy of IDView<AvatarStackView, [UUID]>(v73, &_s15ConversationKit19SessionActionNoticeV0E4TypeO_AEtMd);
      v29 = 0;
      return v29 & 1;
    default:
      if (v7.i64[0] >> 62)
      {
        goto LABEL_102;
      }

      v70 = v3;
      v71 = v2;
      v72 = v5;
      v68 = v6;
      v69 = v7.i8[0];
      v10 = OUTLINED_FUNCTION_73_8();
      outlined copy of SessionActionNotice.NoticeType(v10, v11, v12);
      v13 = OUTLINED_FUNCTION_23_40();
      outlined copy of SessionActionNotice.NoticeType(v13, v14, v15);
      v16 = OUTLINED_FUNCTION_73_8();
      outlined copy of SessionActionNotice.NoticeType(v16, v17, v18);
      v19 = OUTLINED_FUNCTION_23_40();
      outlined copy of SessionActionNotice.NoticeType(v19, v20, v21);
      v22 = static SessionActionNotice.QueueItemType.== infix(_:_:)(&v70, v68.i64);
      outlined destroy of IDView<AvatarStackView, [UUID]>(v73, &_s15ConversationKit19SessionActionNoticeV0E4TypeO_AEtMd);
      v23 = OUTLINED_FUNCTION_73_8();
      outlined consume of SessionActionNotice.NoticeType(v23, v24, v25);
      v26 = OUTLINED_FUNCTION_23_40();
      outlined consume of SessionActionNotice.NoticeType(v26, v27, v28);
      v29 = v22 & (v4 == v9);
      return v29 & 1;
  }
}

void SessionActionNotice.fullSentence.getter()
{
  OUTLINED_FUNCTION_29();
  v297 = v2;
  v288 = type metadata accessor for AttributedString.InterpolationOptions();
  OUTLINED_FUNCTION_1();
  v289 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_40();
  v287 = v5;
  OUTLINED_FUNCTION_4_24();
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40();
  v290 = v8;
  OUTLINED_FUNCTION_4_24();
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40();
  v293 = v11;
  OUTLINED_FUNCTION_4_24();
  v304 = type metadata accessor for AttributedString.AttributeMergePolicy();
  OUTLINED_FUNCTION_1();
  v300 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40();
  v303 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  v298 = v285 - v17;
  v18 = OUTLINED_FUNCTION_4_24();
  v295 = type metadata accessor for Participant(v18);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_40();
  v294 = v20;
  OUTLINED_FUNCTION_4_24();
  v301 = type metadata accessor for AttributeContainer();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_82();
  v22 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v285 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v285 - v43;
  v45 = type metadata accessor for SessionActionNotice(0);
  v46 = (v0 + *(v45 + 24));
  v47 = v46[3];
  v48 = v46[4];
  __swift_project_boxed_opaque_existential_1(v46, v47);
  (*(v48 + 224))(v47, v48);
  OUTLINED_FUNCTION_175_0();
  AttributeContainer.init()();
  OUTLINED_FUNCTION_208();
  v286 = v1;
  AttributedString.init(_:attributes:)();
  v292 = v45;
  v49 = *(v45 + 32);
  v302 = v0;
  v291 = *(v0 + v49);
  v299 = v22;
  if ((v291 & 1) == 0)
  {
    v50 = v298;
    _s15ConversationKit11ParticipantVSgWOcTm_0(v302 + *(v292 + 20), v298, &_s15ConversationKit11ParticipantVSgMd);
    OUTLINED_FUNCTION_115(v50, 1, v295);
    if (!v51)
    {
      OUTLINED_FUNCTION_3_119();
      _s15ConversationKit11ParticipantVWObTm_4();
      Participant.contactDetails.getter();
      v52 = v306;

      OUTLINED_FUNCTION_62_0();
      Participant.name(_:)();

      OUTLINED_FUNCTION_182_1();
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      OUTLINED_FUNCTION_5_103();
      _s15ConversationKit11ParticipantVWOhTm_12();
      goto LABEL_6;
    }

    outlined destroy of IDView<AvatarStackView, [UUID]>(v50, &_s15ConversationKit11ParticipantVSgMd);
    v22 = v299;
  }

  (*(v24 + 16))(v41, v44, v22);
LABEL_6:
  v53 = v44;
  v305 = v41;
  v296 = v24;
  if (one-time initialization token for subjectContainer != -1)
  {
    OUTLINED_FUNCTION_20_41();
  }

  v54 = v301;
  v55 = __swift_project_value_buffer(v301, static AttributedStrings.Notices.subjectContainer);
  v56 = *MEMORY[0x1E69686E8];
  v57 = v300;
  v58 = v300[13];
  v59 = v303;
  v60 = v304;
  v58(v303, v56, v304);
  OUTLINED_FUNCTION_206();
  v298 = v53;
  AttributedString.mergeAttributes(_:mergePolicy:)();
  v61 = v57[1];
  (v61)(v59, v60);
  v62 = v56;
  v63 = v57 + 1;
  v294 = v58;
  v58(v59, v62, v60);
  OUTLINED_FUNCTION_206();
  AttributedString.mergeAttributes(_:mergePolicy:)();
  (v61)(v59, v60);
  v65 = *v302;
  v64 = v302[1];
  v67 = v302[2];
  v66 = v302[3];
  v295 = v55;
  switch(v67 >> 62)
  {
    case 1uLL:
      if (v67)
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_83_7();
        OUTLINED_FUNCTION_193_0();
        String.LocalizationValue.init(stringLiteral:)();
        goto LABEL_24;
      }

      v69 = v299;
      v83 = v296;
      OUTLINED_FUNCTION_103_2();
      if (v94)
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_83_7();
        OUTLINED_FUNCTION_193_0();
        String.LocalizationValue.init(stringLiteral:)();
      }

      else
      {
        OUTLINED_FUNCTION_94_4();
        OUTLINED_FUNCTION_266_0();
        v118._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v118);
        v306 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_0_151();
        lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v119, v120);
        v59 = v63;
        v121 = OUTLINED_FUNCTION_208();
        __swift_instantiateConcreteTypeFromMangledNameV2(v121);
        OUTLINED_FUNCTION_134();
        lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v122, v123);
        OUTLINED_FUNCTION_78_6();
        v302 = v61;
        v124 = v287;
        OUTLINED_FUNCTION_10_64();
        v54 = v301;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OUTLINED_FUNCTION_184_0();
        OUTLINED_FUNCTION_27_34();
        v125 = v124;
        v61 = v302;
        v126(v125, v63);
        OUTLINED_FUNCTION_100_3();
        v128._countAndFlagsBits = v127 + 1;
        v128._object = (v129 | 0x8000000000000000);
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v128);
        OUTLINED_FUNCTION_83_7();
        String.LocalizationValue.init(stringInterpolation:)();
      }

      OUTLINED_FUNCTION_182_1();
      AttributedString.init(cnkLocalized:)();
      goto LABEL_55;
    case 2uLL:
      v68 = HIBYTE(v64) & 0xF;
      if ((v64 & 0x2000000000000000) == 0)
      {
        v68 = v65 & 0xFFFFFFFFFFFFLL;
      }

      if (!v68)
      {
        v69 = v299;
        OUTLINED_FUNCTION_103_2();
        if (v93)
        {
          OUTLINED_FUNCTION_83_7();
          String.LocalizationValue.init(stringLiteral:)();
        }

        else
        {
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v110._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v110);
          v306 = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_0_151();
          lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v111, v112);
          v59 = &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR;
          v113 = OUTLINED_FUNCTION_15_14();
          __swift_instantiateConcreteTypeFromMangledNameV2(v113);
          OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_30_20();
          lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v114, v115);
          OUTLINED_FUNCTION_78_6();
          OUTLINED_FUNCTION_72_10();
          OUTLINED_FUNCTION_10_64();
          v54 = v301;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OUTLINED_FUNCTION_184_0();
          OUTLINED_FUNCTION_27_34();
          v116(v61, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
          v117._countAndFlagsBits = OUTLINED_FUNCTION_156_1();
          v117._object = 0xE800000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v117);
          OUTLINED_FUNCTION_83_7();
          String.LocalizationValue.init(stringInterpolation:)();
        }

        v83 = v296;
        v81 = v297;
        goto LABEL_103;
      }

      v69 = v299;
      v59 = v290;
      OUTLINED_FUNCTION_103_2();
      if (v70)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v71 = OUTLINED_FUNCTION_166_0();
      }

      else
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v98._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v98);
        v306 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_0_151();
        lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v99, v100);
        v101 = OUTLINED_FUNCTION_15_14();
        __swift_instantiateConcreteTypeFromMangledNameV2(v101);
        OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_30_20();
        lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v102, v103);
        OUTLINED_FUNCTION_78_6();
        OUTLINED_FUNCTION_72_10();
        v59 = v290;
        v104 = v288;
        v54 = v301;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
        OUTLINED_FUNCTION_27_34();
        v69 = v299;
        v105(v61, v104);
        OUTLINED_FUNCTION_156_1();
        OUTLINED_FUNCTION_254_1();
      }

      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v71);
      v106._countAndFlagsBits = v65;
      v106._object = v64;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v106);
      v107._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v107);
      OUTLINED_FUNCTION_83_7();
      String.LocalizationValue.init(stringInterpolation:)();
      OUTLINED_FUNCTION_182_1();
      AttributedString.init(cnkLocalized:)();
      v83 = v296;
LABEL_55:
      (*(v83 + 32))(v297, v59, v69);
      goto LABEL_105;
    case 3uLL:
      OUTLINED_FUNCTION_79_8();
      if (!v51 || v64 | v65 | v73)
      {
        if (v65 == 1 && !v64)
        {
          OUTLINED_FUNCTION_79_8();
          if (v51)
          {
            if (!v84)
            {
              v300 = v63;
              v85 = OUTLINED_FUNCTION_44_0();
              __swift_project_boxed_opaque_existential_1(v85, v86);
              v87 = OUTLINED_FUNCTION_2_14();
              v89 = v88(v87);
              v81 = v297;
              if (v89)
              {
                v90 = v89;
                v59 = [v89 activity];
                v91 = [v59 isScreenSharingActivity];

                if (v91)
                {
                  v69 = v299;
                  OUTLINED_FUNCTION_103_2();
                  if (v92)
                  {
                    OUTLINED_FUNCTION_83_7();
                    String.LocalizationValue.init(stringLiteral:)();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_48_14();
                    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                    v180._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
                    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v180);
                    v306 = MEMORY[0x1E69E7CC0];
                    OUTLINED_FUNCTION_0_151();
                    lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v181, v182);
                    v59 = &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR;
                    v183 = OUTLINED_FUNCTION_15_14();
                    __swift_instantiateConcreteTypeFromMangledNameV2(v183);
                    OUTLINED_FUNCTION_30_20();
                    lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v184, v185);
                    OUTLINED_FUNCTION_30_27();
                    OUTLINED_FUNCTION_10_64();
                    dispatch thunk of SetAlgebra.init<A>(_:)();
                    OUTLINED_FUNCTION_185_0();
                    OUTLINED_FUNCTION_27_34();
                    v186(1, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
                    OUTLINED_FUNCTION_100_3();
                    v188._countAndFlagsBits = v187 + 5;
                    v188._object = (v189 | 0x8000000000000000);
                    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v188);
                    OUTLINED_FUNCTION_83_7();
                    String.LocalizationValue.init(stringInterpolation:)();
                  }

                  v54 = v301;
                  goto LABEL_84;
                }
              }

              v69 = v299;
              OUTLINED_FUNCTION_103_2();
              if (v130)
              {
                OUTLINED_FUNCTION_48_14();
                String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v131 = 0x80E2206465646E45;
                v132 = 0xA90000000000009CLL;
              }

              else
              {
                OUTLINED_FUNCTION_203_1();
                String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v149._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v149);
                v306 = MEMORY[0x1E69E7CC0];
                OUTLINED_FUNCTION_0_151();
                lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v150, v151);
                v152 = OUTLINED_FUNCTION_11_36();
                __swift_instantiateConcreteTypeFromMangledNameV2(v152);
                lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A], &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
                OUTLINED_FUNCTION_30_27();
                OUTLINED_FUNCTION_192();
                OUTLINED_FUNCTION_185_0();
                OUTLINED_FUNCTION_27_34();
                v153 = OUTLINED_FUNCTION_11_36();
                v154(v153);
                v131 = 0xE2206465646E6520;
                v132 = 0xAA00000000009C80;
              }

              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v131);
              v155 = v285[9];
              v156 = OUTLINED_FUNCTION_44_0();
              __swift_project_boxed_opaque_existential_1(v156, v157);
              v158 = OUTLINED_FUNCTION_2_14();
              v310._countAndFlagsBits = v159(v158);
              OUTLINED_FUNCTION_225_0(v310);

              OUTLINED_FUNCTION_172();
              OUTLINED_FUNCTION_169_0();
              AttributedString.init(cnkLocalized:)();
              v143 = v296;
              v146 = *(v296 + 32);
              v144 = v81;
              v145 = v155;
              goto LABEL_69;
            }
          }
        }

        if (v65 == 2 && !v64)
        {
          OUTLINED_FUNCTION_79_8();
          if (v51)
          {
            if (!v108)
            {
              OUTLINED_FUNCTION_103_2();
              if (v109)
              {
                OUTLINED_FUNCTION_11();
                OUTLINED_FUNCTION_83_7();
                OUTLINED_FUNCTION_193_0();
                String.LocalizationValue.init(stringLiteral:)();
              }

              else
              {
                OUTLINED_FUNCTION_266_0();
                v172._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v172);
                v306 = MEMORY[0x1E69E7CC0];
                OUTLINED_FUNCTION_0_151();
                lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v173, v174);
                v59 = &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR;
                v175 = OUTLINED_FUNCTION_15_14();
                __swift_instantiateConcreteTypeFromMangledNameV2(v175);
                OUTLINED_FUNCTION_30_20();
                lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v176, v177);
                OUTLINED_FUNCTION_30_27();
                OUTLINED_FUNCTION_10_64();
                v54 = v301;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
                OUTLINED_FUNCTION_27_34();
                v178(2, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
                v179._countAndFlagsBits = 0xD000000000000011;
                v179._object = 0x80000001BC50D4E0;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v179);
                OUTLINED_FUNCTION_83_7();
                String.LocalizationValue.init(stringInterpolation:)();
              }

              v83 = v296;
              v81 = v297;
              v69 = v299;
LABEL_103:
              OUTLINED_FUNCTION_182_1();
              AttributedString.init(cnkLocalized:)();
              goto LABEL_104;
            }
          }
        }

        if (v65 == 3 && !v64)
        {
          OUTLINED_FUNCTION_79_8();
          if (v51)
          {
            if (!v147)
            {
              OUTLINED_FUNCTION_103_2();
              if (v148)
              {
                OUTLINED_FUNCTION_194_1(0x73756150u);
                OUTLINED_FUNCTION_83_7();
                String.LocalizationValue.init(stringLiteral:)();
              }

              else
              {
                OUTLINED_FUNCTION_94_4();
                String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v194._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v194);
                v306 = MEMORY[0x1E69E7CC0];
                OUTLINED_FUNCTION_0_151();
                lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v195, v196);
                v59 = &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR;
                v197 = OUTLINED_FUNCTION_15_14();
                __swift_instantiateConcreteTypeFromMangledNameV2(v197);
                OUTLINED_FUNCTION_204();
                OUTLINED_FUNCTION_30_20();
                lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v198, v199);
                OUTLINED_FUNCTION_39_16();
                v201 = *(v200 - 256);
                OUTLINED_FUNCTION_10_64();
                v54 = v301;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
                OUTLINED_FUNCTION_27_34();
                v202(v201, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
                OUTLINED_FUNCTION_11();
                v203._countAndFlagsBits = OUTLINED_FUNCTION_193_0();
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v203);
                OUTLINED_FUNCTION_83_7();
                String.LocalizationValue.init(stringInterpolation:)();
              }

              v83 = v296;
              v81 = v297;
              v69 = v299;
              goto LABEL_103;
            }
          }
        }

        if (v65 == 4 && !v64)
        {
          OUTLINED_FUNCTION_79_8();
          if (v51)
          {
            if (!v170)
            {
              OUTLINED_FUNCTION_103_2();
              if (v171)
              {
                OUTLINED_FUNCTION_83_7();
                String.LocalizationValue.init(stringLiteral:)();
              }

              else
              {
                OUTLINED_FUNCTION_94_4();
                String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                v206._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v206);
                v306 = MEMORY[0x1E69E7CC0];
                OUTLINED_FUNCTION_0_151();
                lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v207, v208);
                v59 = &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR;
                v209 = OUTLINED_FUNCTION_15_14();
                __swift_instantiateConcreteTypeFromMangledNameV2(v209);
                OUTLINED_FUNCTION_204();
                OUTLINED_FUNCTION_30_20();
                lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v210, v211);
                OUTLINED_FUNCTION_39_16();
                v213 = *(v212 - 256);
                OUTLINED_FUNCTION_10_64();
                v54 = v301;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
                OUTLINED_FUNCTION_27_34();
                v214(v213, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
                v215._countAndFlagsBits = OUTLINED_FUNCTION_194_1(0x766F6D20u);
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v215);
                OUTLINED_FUNCTION_83_7();
                String.LocalizationValue.init(stringInterpolation:)();
              }

              v83 = v296;
              v81 = v297;
              v69 = v299;
              goto LABEL_103;
            }
          }
        }

        if (v65 == 5 && !v64)
        {
          OUTLINED_FUNCTION_79_8();
          if (v51)
          {
            if (!v190)
            {
              OUTLINED_FUNCTION_103_2();
              if (v191)
              {
                OUTLINED_FUNCTION_48_14();
                OUTLINED_FUNCTION_270_1();
                v192 = 0x2064657070696B53;
                v193 = 0xAB000000009C80E2;
              }

              else
              {
                OUTLINED_FUNCTION_219_0();
                v224._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v224);
                v306 = MEMORY[0x1E69E7CC0];
                OUTLINED_FUNCTION_0_151();
                lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v225, v226);
                v227 = OUTLINED_FUNCTION_208();
                __swift_instantiateConcreteTypeFromMangledNameV2(v227);
                OUTLINED_FUNCTION_134();
                lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v228, v229);
                OUTLINED_FUNCTION_39_16();
                OUTLINED_FUNCTION_170_2();
                String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
                OUTLINED_FUNCTION_27_34();
                v230(v63, v54);
                v192 = OUTLINED_FUNCTION_155(0x7070696B7320);
              }

              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v192);
              v83 = v296;
              v231 = OUTLINED_FUNCTION_26_34();
              v312._countAndFlagsBits = v232(v231);
              OUTLINED_FUNCTION_225_0(v312);

              OUTLINED_FUNCTION_172();
              OUTLINED_FUNCTION_169_0();
LABEL_116:
              OUTLINED_FUNCTION_203_1();
              AttributedString.init(cnkLocalized:)();
              v233 = OUTLINED_FUNCTION_197_0();
              v69 = v299;
              v234(v233);
              goto LABEL_70;
            }
          }
        }

        if (v65 == 6 && !v64)
        {
          OUTLINED_FUNCTION_79_8();
          if (v51)
          {
            if (!v204)
            {
              v83 = v296;
              OUTLINED_FUNCTION_103_2();
              if (v205)
              {
                OUTLINED_FUNCTION_83_7();
                String.LocalizationValue.init(stringLiteral:)();
              }

              else
              {
                OUTLINED_FUNCTION_94_4();
                OUTLINED_FUNCTION_270_1();
                v240._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v240);
                v306 = MEMORY[0x1E69E7CC0];
                OUTLINED_FUNCTION_0_151();
                lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v241, v242);
                v59 = &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR;
                v243 = OUTLINED_FUNCTION_15_14();
                __swift_instantiateConcreteTypeFromMangledNameV2(v243);
                OUTLINED_FUNCTION_204();
                OUTLINED_FUNCTION_30_20();
                lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v244, v245);
                OUTLINED_FUNCTION_78_6();
                OUTLINED_FUNCTION_72_10();
                OUTLINED_FUNCTION_10_64();
                v54 = v301;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                OUTLINED_FUNCTION_184_0();
                OUTLINED_FUNCTION_27_34();
                v246(v61, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
                v247._countAndFlagsBits = 0x6465746164707520;
                v247._object = 0xEE00657565757120;
                String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v247);
                OUTLINED_FUNCTION_83_7();
                String.LocalizationValue.init(stringInterpolation:)();
              }

              v81 = v297;
              v69 = v299;
              goto LABEL_103;
            }
          }
        }

        if (v65 != 7 || v64 || (OUTLINED_FUNCTION_79_8(), !v51) || v219)
        {
          if (v65 != 8 || v64 || (OUTLINED_FUNCTION_79_8(), !v51) || v235)
          {
            if (v65 == 9 && !v64)
            {
              OUTLINED_FUNCTION_79_8();
              if (v51)
              {
                if (!v248)
                {
                  v83 = v296;
                  OUTLINED_FUNCTION_103_2();
                  if (v249)
                  {
                    OUTLINED_FUNCTION_48_14();
                    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                    v250._countAndFlagsBits = 0xD000000000000015;
                    v250._object = 0x80000001BC50D420;
                    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v250);
                    v306 = MEMORY[0x1E69E7CC0];
                    OUTLINED_FUNCTION_0_151();
                    lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v251, v252);
                    v253 = OUTLINED_FUNCTION_15_14();
                    __swift_instantiateConcreteTypeFromMangledNameV2(v253);
                    OUTLINED_FUNCTION_30_20();
                    lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v254, v255);
                    OUTLINED_FUNCTION_39_16();
                    v257 = *(v256 - 256);
                    OUTLINED_FUNCTION_10_64();
                    dispatch thunk of SetAlgebra.init<A>(_:)();
                    String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
                    OUTLINED_FUNCTION_27_34();
                    v258(v257, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
                    v259 = OUTLINED_FUNCTION_5_2();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_94_4();
                    OUTLINED_FUNCTION_266_0();
                    v273._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
                    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v273);
                    v306 = MEMORY[0x1E69E7CC0];
                    OUTLINED_FUNCTION_0_151();
                    lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v274, v275);
                    v276 = OUTLINED_FUNCTION_15_14();
                    __swift_instantiateConcreteTypeFromMangledNameV2(v276);
                    OUTLINED_FUNCTION_30_20();
                    lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v277, v278);
                    OUTLINED_FUNCTION_78_6();
                    OUTLINED_FUNCTION_72_10();
                    OUTLINED_FUNCTION_10_64();
                    dispatch thunk of SetAlgebra.init<A>(_:)();
                    OUTLINED_FUNCTION_184_0();
                    OUTLINED_FUNCTION_27_34();
                    v279(v61, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
                    OUTLINED_FUNCTION_100_3();
                    v259 = v280 + 1;
                    v260 = v281 | 0x8000000000000000;
                  }

                  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v259);
                  OUTLINED_FUNCTION_169_0();
                  OUTLINED_FUNCTION_203_1();
                  AttributedString.init(cnkLocalized:)();
                  v282 = OUTLINED_FUNCTION_197_0();
                  v283 = v299;
                  v284(v282);
                  v69 = v283;
                  goto LABEL_70;
                }
              }
            }

            v83 = v296;
            OUTLINED_FUNCTION_103_2();
            if (v261)
            {
              OUTLINED_FUNCTION_48_14();
              OUTLINED_FUNCTION_270_1();
              v262 = OUTLINED_FUNCTION_50_16();
            }

            else
            {
              OUTLINED_FUNCTION_219_0();
              v264._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v264);
              v306 = MEMORY[0x1E69E7CC0];
              OUTLINED_FUNCTION_0_151();
              lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v265, v266);
              v267 = OUTLINED_FUNCTION_208();
              __swift_instantiateConcreteTypeFromMangledNameV2(v267);
              OUTLINED_FUNCTION_134();
              lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v268, v269);
              OUTLINED_FUNCTION_39_16();
              OUTLINED_FUNCTION_170_2();
              String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
              OUTLINED_FUNCTION_27_34();
              v270(v63, v54);
              v262 = OUTLINED_FUNCTION_155(0x747261747320);
            }

            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v262);
            v271 = OUTLINED_FUNCTION_26_34();
            v313._countAndFlagsBits = v272(v271);
            OUTLINED_FUNCTION_225_0(v313);

            OUTLINED_FUNCTION_172();
            OUTLINED_FUNCTION_169_0();
            goto LABEL_116;
          }

          v306 = 0;
          v307 = 0xE000000000000000;
          _StringGuts.grow(_:)(16);

          v306 = 10256610;
          v307 = 0xA300000000000000;
          v236 = OUTLINED_FUNCTION_26_34();
          v238 = v237(v236);
          MEMORY[0x1BFB20B10](v238);

          MEMORY[0x1BFB20B10](0x68746977209D80E2, 0xA900000000000020);
          lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
          v69 = v299;
          v239 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1BFB20B10](v239);

          OUTLINED_FUNCTION_182_1();
          AttributeContainer.init()();
          v54 = v301;
          OUTLINED_FUNCTION_30_20();
          AttributedString.init(_:attributes:)();
        }

        else
        {
          OUTLINED_FUNCTION_48_14();
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v220._countAndFlagsBits = OUTLINED_FUNCTION_50_16();
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v220);
          v221 = OUTLINED_FUNCTION_26_34();
          v311._countAndFlagsBits = v222(v221);
          OUTLINED_FUNCTION_225_0(v311);
          v54 = v301;

          OUTLINED_FUNCTION_11();
          v223._countAndFlagsBits = 0x1000000000000010;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v223);
          OUTLINED_FUNCTION_83_7();
          String.LocalizationValue.init(stringInterpolation:)();
LABEL_24:
          AttributedString.init(cnkLocalized:)();
LABEL_25:
          v69 = v299;
        }

        v83 = v296;
        goto LABEL_105;
      }

      v300 = v63;
      v74 = OUTLINED_FUNCTION_44_0();
      __swift_project_boxed_opaque_existential_1(v74, v75);
      v76 = OUTLINED_FUNCTION_2_14();
      v78 = v77(v76);
      if (!v78 || (v79 = v78, v59 = [v78 activity], v80 = objc_msgSend(v59, sel_isScreenSharingActivity), v79, v59, !v80))
      {
        v69 = v299;
        OUTLINED_FUNCTION_103_2();
        if (v95)
        {
          OUTLINED_FUNCTION_48_14();
          OUTLINED_FUNCTION_270_1();
          v96 = OUTLINED_FUNCTION_50_16();
        }

        else
        {
          OUTLINED_FUNCTION_203_1();
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v133._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v133);
          v306 = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_0_151();
          lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v134, v135);
          v136 = OUTLINED_FUNCTION_11_36();
          __swift_instantiateConcreteTypeFromMangledNameV2(v136);
          lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A], &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
          OUTLINED_FUNCTION_30_27();
          OUTLINED_FUNCTION_192();
          OUTLINED_FUNCTION_185_0();
          OUTLINED_FUNCTION_27_34();
          v137 = OUTLINED_FUNCTION_11_36();
          v138(v137);
          v96 = OUTLINED_FUNCTION_155(0x747261747320);
        }

        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v96);
        v139 = OUTLINED_FUNCTION_44_0();
        __swift_project_boxed_opaque_existential_1(v139, v140);
        v141 = OUTLINED_FUNCTION_2_14();
        v309._countAndFlagsBits = v142(v141);
        OUTLINED_FUNCTION_225_0(v309);

        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_169_0();
        OUTLINED_FUNCTION_203_1();
        AttributedString.init(cnkLocalized:)();
        v143 = v296;
        v144 = OUTLINED_FUNCTION_197_0();
LABEL_69:
        v146(v144, v145, v69);
        v83 = v143;
LABEL_70:
        v54 = v301;
        goto LABEL_105;
      }

      v81 = v297;
      v69 = v299;
      OUTLINED_FUNCTION_103_2();
      if (v82)
      {
        OUTLINED_FUNCTION_83_7();
        String.LocalizationValue.init(stringLiteral:)();
      }

      else
      {
        OUTLINED_FUNCTION_48_14();
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v160._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v160);
        v306 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_0_151();
        lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v161, v162);
        v59 = &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR;
        v163 = OUTLINED_FUNCTION_15_14();
        __swift_instantiateConcreteTypeFromMangledNameV2(v163);
        OUTLINED_FUNCTION_30_20();
        lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](v164, v165);
        OUTLINED_FUNCTION_30_27();
        OUTLINED_FUNCTION_10_64();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OUTLINED_FUNCTION_185_0();
        OUTLINED_FUNCTION_27_34();
        v166(v65, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
        OUTLINED_FUNCTION_100_3();
        v168._countAndFlagsBits = v167 + 7;
        v168._object = (v169 | 0x8000000000000000);
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v168);
        OUTLINED_FUNCTION_83_7();
        String.LocalizationValue.init(stringInterpolation:)();
      }

      v54 = v301;
LABEL_84:
      OUTLINED_FUNCTION_182_1();
      AttributedString.init(cnkLocalized:)();
      v83 = v296;
LABEL_104:
      (*(v83 + 32))(v81, v59, v69);
LABEL_105:
      v216 = v294;
      if (one-time initialization token for foregroundContainer != -1)
      {
        OUTLINED_FUNCTION_22_39();
      }

      __swift_project_value_buffer(v54, static AttributedStrings.Notices.foregroundContainer);
      v216(v303, *MEMORY[0x1E69686E0], v304);
      OUTLINED_FUNCTION_76();
      AttributedString.mergeAttributes(_:mergePolicy:)();
      v217 = OUTLINED_FUNCTION_206();
      (v61)(v217);
      AttributedString.replaceLinks(with:)();
      v218 = *(v83 + 8);
      v218(v305, v69);
      v218(v298, v69);
      OUTLINED_FUNCTION_30_0();
      return;
    default:
      v306 = v65;
      v307 = v64;
      v308 = v67;
      SessionActionNotice.fullSentence(for:count:)(&v306, v66, v297);
      goto LABEL_25;
  }
}

uint64_t SessionActionNotice.title.getter()
{
  OUTLINED_FUNCTION_46_17();
  if (*(v0 + v1) == 1)
  {

    return SessionActionNotice.actionDescription.getter();
  }

  else
  {

    return SessionActionNotice.attributionDescription.getter();
  }
}

uint64_t SessionActionNotice.attributedSubtitle.getter()
{
  OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for AttributeContainer();
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_46_17();
  if (*(v0 + v3) == 1)
  {
    SessionActionNotice.attributionDescription.getter();
  }

  else
  {
    SessionActionNotice.actionDescription.getter();
  }

  OUTLINED_FUNCTION_175_0();
  AttributeContainer.init()();
  OUTLINED_FUNCTION_208();
  return AttributedString.init(_:attributes:)();
}

BOOL SessionActionNotice.isSticky.getter()
{
  SessionActionNotice.noticeAccessory.getter();
  if (v2 >= 2)
  {
    outlined consume of NoticeAccessory(v1, v2);
  }

  return v2 > 1;
}

uint64_t AppLaunchNotice.bundleIdentifier.getter()
{
  OUTLINED_FUNCTION_214_1();

  return OUTLINED_FUNCTION_46();
}

void AppLaunchNotice.fullSentence.getter()
{
  OUTLINED_FUNCTION_29();
  v22 = type metadata accessor for AttributedString.AttributeMergePolicy();
  OUTLINED_FUNCTION_1();
  v21 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_40();
  v20 = v3;
  OUTLINED_FUNCTION_4_24();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v8 = type metadata accessor for AppLaunchNotice(0);
  v9 = v0;
  v10 = *(v0 + *(v8 + 28));
  v11 = MEMORY[0x1E69E7D40];
  v12 = (*((*MEMORY[0x1E69E7D40] & *v10) + 0x68))();
  MEMORY[0x1BFB20B10](v12);

  v13 = MEMORY[0x1BFB20B10](10322146, 0xA300000000000000);
  v14 = *(v10 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_type);
  v15 = (*((*v11 & *v10) + 0x70))(v13);
  if (!v14)
  {

    if (v15)
    {
      OUTLINED_FUNCTION_11();
    }

    goto LABEL_8;
  }

  if (v14 == 1)
  {

LABEL_8:
    String.LocalizationValue.init(stringLiteral:)();
    goto LABEL_9;
  }

  if (*(v9 + *(v8 + 36)) == 1)
  {

    AppLaunchNotice.attributedCollaborationTitle()();
    goto LABEL_10;
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
  v18._countAndFlagsBits = 10256610;
  v18._object = 0xA300000000000000;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v18);

  OUTLINED_FUNCTION_11();
  v19._countAndFlagsBits = 0x100000000000001CLL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
  String.LocalizationValue.init(stringInterpolation:)();
LABEL_9:
  AttributedString.init(cnkLocalized:)();
LABEL_10:
  if (one-time initialization token for subjectContainer != -1)
  {
    OUTLINED_FUNCTION_20_41();
  }

  v16 = type metadata accessor for AttributeContainer();
  __swift_project_value_buffer(v16, static AttributedStrings.Notices.subjectContainer);
  (*(v21 + 104))(v20, *MEMORY[0x1E69686E0], v22);
  OUTLINED_FUNCTION_208();
  AttributedString.mergeAttributes(_:mergePolicy:)();
  (*(v21 + 8))(v20, v22);
  OUTLINED_FUNCTION_30_0();
}

uint64_t AppLaunchNotice.title.getter()
{
  AppLaunchNotice.noticeContent.getter();
  OUTLINED_FUNCTION_305();

  return OUTLINED_FUNCTION_46();
}

uint64_t AppLaunchNotice.attributedSubtitle.getter()
{
  OUTLINED_FUNCTION_30();
  v0 = type metadata accessor for AttributeContainer();
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_1();
  AppLaunchNotice.noticeContent.getter();

  AttributeContainer.init()();
  OUTLINED_FUNCTION_208();
  return AttributedString.init(_:attributes:)();
}

void SystemUpdateNotice.fullSentence.getter()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  if (v0[2])
  {
    if (!*v0)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v8._countAndFlagsBits = 543519573;
      v8._object = 0xE400000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
      v9._countAndFlagsBits = OUTLINED_FUNCTION_7_8();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v9);
      OUTLINED_FUNCTION_100_3();
      v11 = v10 + 17;
      v13 = v12 | 0x8000000000000000;
LABEL_16:
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v11);
      String.LocalizationValue.init(stringInterpolation:)();
      AttributedString.init(cnkLocalized:)();
      OUTLINED_FUNCTION_30_0();
      return;
    }

    if (*v0 == 1)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v5 = 0x64656D2065766F4DLL;
      v6 = 0xEE00206F74206169;
LABEL_15:
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v5);
      v25._countAndFlagsBits = OUTLINED_FUNCTION_7_8();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v25);
      OUTLINED_FUNCTION_11();
      v11 = OUTLINED_FUNCTION_193_0();
      goto LABEL_16;
    }

    _s15ConversationKit11ParticipantVSgWOcTm_0((v0 + 3), v26, &_s15ConversationKit8Activity_pSgMd);
    if (v27)
    {
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v14 = OUTLINED_FUNCTION_7_26();
      v16 = v15(v14);
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1(v26);
      if (v18)
      {
LABEL_14:
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v23._countAndFlagsBits = 0x9C80E22079616C50;
        v23._object = 0xA800000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
        v24._countAndFlagsBits = v16;
        v24._object = v18;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v24);

        v5 = 0x206E6F209D80E2;
        v6 = 0xA700000000000000;
        goto LABEL_15;
      }
    }

    else
    {
      outlined destroy of IDView<AvatarStackView, [UUID]>(v26, &_s15ConversationKit8Activity_pSgMd);
    }

    v19 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_5_5();
    v16 = OUTLINED_FUNCTION_48_1(0xD000000000000016, 0x80000001BC5099F0, v20, v21);
    v18 = v22;

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_30_0();

  AttributedString.init(stringLiteral:)();
}

uint64_t SystemUpdateNotice.title.getter()
{
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = *(v0 + 1);
    v3 = *v0;
    v4 = objc_opt_self();

    v5 = [v4 conversationKit];
    if (v3)
    {
      if (v3 != 1)
      {
        OUTLINED_FUNCTION_251_0();
        v17.super.isa = v5;
        OUTLINED_FUNCTION_17_0(v15 | 8, v16 | 0x8000000000000000, v18, v19, v17);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1BC4BAA20;
        _s15ConversationKit11ParticipantVSgWOcTm_0((v0 + 24), v35, &_s15ConversationKit8Activity_pSgMd);
        v21 = v36;
        if (v36)
        {
          v22 = v37;
          __swift_project_boxed_opaque_existential_1(v35, v36);
          v21 = (*(v22 + 48))(v21, v22);
          v24 = v23;
          __swift_destroy_boxed_opaque_existential_1(v35);
        }

        else
        {
          outlined destroy of IDView<AvatarStackView, [UUID]>(v35, &_s15ConversationKit8Activity_pSgMd);
          v24 = 0;
        }

        v25 = MEMORY[0x1E69E6158];
        *(v20 + 56) = MEMORY[0x1E69E6158];
        v26 = lazy protocol witness table accessor for type String and conformance String();
        *(v20 + 64) = v26;
        if (!v24)
        {
          v27 = [v4 conversationKit];
          OUTLINED_FUNCTION_29_3();
          OUTLINED_FUNCTION_5_5();
          v28.super.isa = v27;
          v21 = OUTLINED_FUNCTION_17_0(v29, v30, v31, v32, v28);
          v24 = v33;
        }

        *(v20 + 32) = v21;
        *(v20 + 40) = v24;
        *(v20 + 96) = v25;
        *(v20 + 104) = v26;
        *(v20 + 72) = v2;
        *(v20 + 80) = v1;
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_251_0();
      OUTLINED_FUNCTION_5_5();
      v9 = v8 | 0x8000000000000000;
      v10 = 0xD000000000000015;
    }

    else
    {
      OUTLINED_FUNCTION_5_5();
      v10 = v11 + 3;
      v9 = v12 | 0x8000000000000000;
    }

    v13.super.isa = v5;
    OUTLINED_FUNCTION_17_0(v10, v9, v6, v7, v13);
    OUTLINED_FUNCTION_18_8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v14 = OUTLINED_FUNCTION_13_12();
    *(v14 + 16) = xmmword_1BC4BA940;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v14 + 32) = v2;
    *(v14 + 40) = v1;
    OUTLINED_FUNCTION_15_14();
LABEL_14:
    String.init(format:_:)();
    OUTLINED_FUNCTION_305();
  }

  return OUTLINED_FUNCTION_46();
}