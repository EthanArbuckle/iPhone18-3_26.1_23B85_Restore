void closure #2 in DOCProgressCollectionIndicatorView.autohideContentIfDesired()(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView;
    [*(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView) setHidden_];
    [*(a2 + v2) setAlpha_];
    v4 = *(a2 + v2);
    v5 = *((*MEMORY[0x277D85000] & *v4) + 0x70);
    v6 = v4;
    v5(0.0);
  }
}

uint64_t DOCProgressCollectionIndicatorView.startObserving()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_source + 8);
  swift_unknownObjectRetain();
  DOCProgressCollectionIndicatorView.debug(_:)(0xD000000000000012, 0x8000000249BDD7A0);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_sourceUpdateHandlerIsInstalled) = 1;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_progressGroup;
  v3 = *(**(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_progressGroup) + 432);

  v3(v4);

  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = *(v1 + 16);

  v7(v0, partial apply for closure #1 in DOCProgressCollectionIndicatorView.startObserving(), v6, ObjectType, v1);

  DOCProgressCollectionIndicatorView.updateCombinedProgress()();
  v8 = *(**(v0 + v2) + 168);

  v8(1);
  swift_unknownObjectRelease();
}

void closure #1 in DOCProgressCollectionIndicatorView.startObserving()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DOCProgressCollectionIndicatorView.updateCombinedProgress()();
  }
}

void DOCProgressCollectionIndicatorView.stopObserving()()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_progressGroup) + 168);

  v1(0);

  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_sourceUpdateHandlerIsInstalled) = 0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_source + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 16);
  swift_unknownObjectRetain();
  v4(v0, 0, 0, ObjectType, v2);
  v5 = swift_unknownObjectRelease();
  v6 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
  v7 = v6(v5);
  LOBYTE(v2) = v8;
  v9 = COERCE_DOUBLE(v6(v7));
  if ((v2 & 1) != 0 || (v10 & 1) != 0 || v9 >= 1.0)
  {
    DOCProgressCollectionIndicatorView.autohideContentIfDesired()();
  }

  DOCProgressCollectionIndicatorView.debug(_:)(0x6E6976726573626FLL, 0xEF6465646E652067);
}

Swift::Void __swiftcall DOCProgressCollectionIndicatorView.forceUpdateCombinedProgressImmediately()()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_progressGroup) + 560);

  v1(v2);

  DOCProgressCollectionIndicatorView.updateCombinedProgress()();
}

id DOCProgressCollectionIndicatorView.updateCombinedProgress()()
{
  v1 = v0;
  v27 = objc_opt_self();
  [v27 begin];
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_source + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 8);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  v6 = *(v5 + 16);
  v7 = &unk_27EEEA000;
  if (v6)
  {
    v8 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_progressGroup;
    v9 = v5 + 32;
    do
    {
      outlined init with copy of DOCSidebarItemIconProvider(v9, &aBlock);
      v10 = v31;
      v11 = v32;
      __swift_project_boxed_opaque_existential_1(&aBlock, v31);
      v12 = (*(v11 + 3))(v10, v11);
      if ([v12 isCancelled] || objc_msgSend(v12, sel_isFinished) || (objc_msgSend(v12, sel_fractionCompleted), v13 >= 1.0))
      {
      }

      else
      {
        [v12 isPaused];

        v14 = *(**(v1 + v8) + 648);

        v14(&aBlock);
      }

      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      v9 += 40;
      --v6;
    }

    while (v6);

    v7 = &unk_27EEEA000;
  }

  else
  {
  }

  v15 = v7[258];
  v16 = *(**(v1 + v15) + 376);

  v16(&aBlock, v17);

  if (LOBYTE(aBlock) - 2 < 2 || LOBYTE(aBlock) == 4)
  {
    v18 = v27;
  }

  else
  {
    v18 = v27;
    if (LOBYTE(aBlock))
    {
      DOCProgressCollectionIndicatorView.debug(_:)(0xD000000000000036, 0x8000000249BDD760);
      (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(0, 1);
      v24 = *(**(v1 + v15) + 432);

      v24(v25);

      return [v18 commit];
    }
  }

  DOCProgressCollectionIndicatorView.debug(_:)(0xD00000000000002DLL, 0x8000000249BDD6C0);
  v19 = *(**(v1 + v15) + 400);

  v19(&aBlock, v20);

  if ((v29 & 0x100) != 0)
  {
    (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(0, 1);
    DOCProgressCollectionIndicatorView.debug(_:)(0xD000000000000039, 0x8000000249BDD6F0);
  }

  else
  {
    if (v29)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = aBlock;
    }

    if (v21 >= 1.0)
    {
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v32 = partial apply for closure #2 in DOCProgressCollectionIndicatorView.updateCombinedProgress();
      v33 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v31 = &block_descriptor_59_0;
      v23 = _Block_copy(&aBlock);

      [v18 setCompletionBlock_];
      _Block_release(v23);
    }

    (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(COERCE_DOUBLE(*&v21), 0);
    aBlock = 0.0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);
    MEMORY[0x24C1FAEA0](0xD00000000000002DLL, 0x8000000249BDD730);
    Double.write<A>(to:)();
    DOCProgressCollectionIndicatorView.debug(_:)(*&aBlock, v29);
  }

  return [v18 commit];
}

void closure #2 in DOCProgressCollectionIndicatorView.updateCombinedProgress()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_progressGroup;
    v3 = *(**(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_progressGroup) + 376);

    v3(&v7, v4);

    if ((v7 & 0xFE) != 2)
    {
      v5 = *(**&v1[v2] + 432);

      v5(v6);
    }
  }
}

id DOCProgressCollectionIndicatorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void DOCProgressCollectionIndicatorView.__ivar_destroyer()
{
  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_delegate);

  swift_unknownObjectRelease();

  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView);
}

id DOCProgressCollectionIndicatorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCProgressCollectionIndicatorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id closure #1 in UIView.performWithoutAllAnimation(_:)(void (*a1)(id))
{
  v2 = objc_opt_self();
  [v2 begin];
  a1([v2 setDisableActions_]);
  [v2 setDisableActions_];

  return [v2 commit];
}

char *specialized DOCProgressCollectionIndicatorView.__allocating_init(style:source:pacingInterval:)(char *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_allocWithZone(type metadata accessor for DOCProgressCollectionIndicatorView());

  return specialized DOCProgressCollectionIndicatorView.init(style:source:pacingInterval:)(a1, a2, v11, a3, a5, a6);
}

char *specialized DOCProgressCollectionIndicatorView.init(style:source:pacingInterval:)(char *a1, uint64_t a2, _BYTE *a3, double a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  swift_unknownObjectWeakInit();
  a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_enabled] = 1;
  v17 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_combinedProgress];
  *v17 = 0;
  v17[8] = 1;
  a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_autohideContentOnCompletion] = 1;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_preferredIconColor] = 0;
  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_progressGroup;
  type metadata accessor for DOCGenericOperationCombinedProgress(0);
  swift_allocObject();
  *&a3[v18] = DOCGenericOperationCombinedProgress.init(operations:observing:)(MEMORY[0x277D84F90], &outlined read-only object #0 of specialized DOCProgressCollectionIndicatorView.init(style:source:pacingInterval:));
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView____lazy_storage___didTapGestureRecognizer] = 0;
  v19 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_debugID];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v12 + 8))(v15, v11);
  v20 = specialized Collection.prefix(_:)(6);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  *v19 = v20;
  v19[1] = v22;
  v19[2] = v24;
  v19[3] = v26;
  a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_isShowingContent] = 0;
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_pointerInteraction] = 0;
  a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_sourceUpdateHandlerIsInstalled] = 0;
  v27 = &a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_source];
  *v27 = a2;
  v27[1] = a6;
  LOBYTE(v42) = v16;
  v28 = objc_allocWithZone(type metadata accessor for DOCProgressIndicatorView());
  *&a3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView] = DOCProgressIndicatorView.init(style:progressChangeAnimationDuration:)(&v42, a4 + 0.1);
  v29 = type metadata accessor for DOCProgressCollectionIndicatorView();
  v44.receiver = a3;
  v44.super_class = v29;
  v30 = objc_msgSendSuper2(&v44, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v42 = 0;
  v43 = 0xE000000000000000;
  v31 = v30;
  _StringGuts.grow(_:)(19);

  v42 = 0xD000000000000011;
  v43 = 0x8000000249BCB230;
  v32 = [v31 description];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  MEMORY[0x24C1FAEA0](v33, v35);

  DOCProgressCollectionIndicatorView.debug(_:)(v42, v43);

  v36 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_progressGroup;
  v37 = *(**&v31[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_progressGroup] + 128);

  v37(v38, a4);

  v39 = *&v31[v36];
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();

  (*(*v39 + 360))(partial apply for closure #1 in DOCProgressCollectionIndicatorView.init(style:source:pacingInterval:), v40);

  DOCProgressCollectionIndicatorView.configureViews()();
  DOCProgressCollectionIndicatorView.updateCombinedProgress()();

  return v31;
}

uint64_t specialized DOCProgressCollectionIndicatorView.pointerInteraction(_:styleFor:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit14UIPointerShapeOSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v30 - v3;
  v5 = type metadata accessor for UIPointerEffect();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for UIPointerShape();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView] isHidden];
  result = 0;
  if ((v16 & 1) == 0)
  {
    [v0 frame];
    v32 = CGRectInset(v31, -8.0, -8.0);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    v22 = (51.0 - CGRectGetWidth(v32)) * 0.5;
    if (v22 < 0.0)
    {
      v23 = -0.0;
    }

    else
    {
      v23 = -v22;
    }

    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v34 = CGRectInset(v33, v23, 0.0);
    v24 = v34.origin.x;
    v25 = v34.origin.y;
    v26 = v34.size.width;
    v27 = v34.size.height;
    static UIPointerShape.defaultCornerRadius.getter();
    *v15 = v24;
    v15[1] = v25;
    v15[2] = v26;
    v15[3] = v27;
    *(v15 + 4) = v28;
    (*(v11 + 104))(v15, *MEMORY[0x277D74A60], v10);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPointerStyle);
    *v9 = [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView_];
    (*(v6 + 104))(v9, *MEMORY[0x277D74B10], v5);
    (*(v11 + 16))(v4, v15, v10);
    (*(v11 + 56))(v4, 0, 1, v10);
    v29 = UIPointerStyle.init(effect:shape:)();
    (*(v11 + 8))(v15, v10);
    return v29;
  }

  return result;
}

id DOCItemRenameTextView.clearButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton);
  }

  else
  {
    v4 = closure #1 in DOCItemRenameTextView.clearButton.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

Swift::Bool __swiftcall DOCItemRenameTextView.becomeFirstResponder()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isBecomingFirstResponder;
  swift_beginAccess();
  v0[v2] = 1;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  result = objc_msgSendSuper2(&v4, sel_becomeFirstResponder);
  v0[v2] = 0;
  return result;
}

uint64_t DOCItemRenameTextView.itemRenameDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_itemRenameDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCItemRenameTextView.itemRenameDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_itemRenameDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

uint64_t DOCItemRenameTextView.notificationsController.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___notificationsController;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___notificationsController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___notificationsController);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSNotificationC26DocumentManagerExecutablesE23SubscriptionsControllerCy_AC21DOCItemRenameTextViewCGMd);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v2 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObject_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

id DOCItemRenameTextView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

char *DOCItemRenameTextView.init(initialText:canDisplayExtension:isDisplayingExtension:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_itemRenameDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_canDisplayExtension] = 0;
  v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isDisplayingExtension] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___notificationsController] = 0;
  v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle] = 0;
  v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isBecomingFirstResponder] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___backgroundView] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_verticalMargin] = 0x4000000000000000;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_contentSizeObserver] = 0;
  v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_showsClearButton] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton] = 0;
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v31, sel_initWithFrame_textContainer_, 0, 0.0, 0.0, 0.0, 0.0);
  [v11 setReturnKeyType_];
  v12 = v11;
  [v12 setEnablesReturnKeyAutomatically_];
  v13 = [objc_opt_self() inlineRenameField];
  if (!v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = MEMORY[0x24C1FAD20](v14);
  }

  [v12 setAccessibilityIdentifier_];

  [v12 setSmartInsertDeleteType_];
  v30.receiver = v12;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, sel_setDelegate_, v12);

  v15 = MEMORY[0x24C1FAD20](a1, a2);

  v29.receiver = v12;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, sel_setText_, v15);

  v12[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_canDisplayExtension] = a3 & 1;
  v12[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isDisplayingExtension] = a4 & 1;
  v16 = DOCItemRenameTextView.notificationsController.getter();
  v17 = *MEMORY[0x277D76BF8];
  v18 = objc_opt_self();
  v19 = [v18 mainQueue];
  (*(*v16 + 144))(v17, &v27, v19, closure #1 in DOCItemRenameTextView.init(initialText:canDisplayExtension:isDisplayingExtension:), 0);

  outlined destroy of Any?(&v27);
  v20 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___notificationsController;
  v21 = *&v12[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___notificationsController];
  v22 = *MEMORY[0x277D76660];
  v27 = 0u;
  v28 = 0u;

  v23 = [v18 mainQueue];
  (*(*v21 + 144))(v22, &v27, v23, closure #3 in DOCItemRenameTextView.init(initialText:canDisplayExtension:isDisplayingExtension:), 0);

  outlined destroy of Any?(&v27);
  v24 = *&v12[v20];
  v27 = 0u;
  v28 = 0u;

  v25 = [v18 mainQueue];
  (*(*v24 + 144))(v22, &v27, v25, closure #3 in DOCItemRenameTextView.init(initialText:canDisplayExtension:isDisplayingExtension:), 0);

  outlined destroy of Any?(&v27);
  return v12;
}

uint64_t DOCItemRenameTextView.sendEndEditingToCell(saveChanges:)(char a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v12, sel_text);
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  if (String.count.getter() < 1 || (a1 & 1) == 0)
  {

    v5 = 0;
    v7 = 0;
  }

  v8 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_itemRenameDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v1, v5, v7, v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isDisplayingExtension], ObjectType, v9);
    swift_unknownObjectRelease();
  }
}

uint64_t closure #1 in DOCItemRenameTextView.init(initialText:canDisplayExtension:isDisplayingExtension:)(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.Rename);
  (*(v7 + 16))(v10, a2, v6);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22[1] = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    v17 = Notification.name.getter();
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v3;
    v3 = v19;

    (*(v7 + 8))(v10, v6);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v3, &v24);
    LOBYTE(v3) = v23;

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2493AC000, v12, v13, "Received %s notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C1FE850](v16, -1, -1);
    MEMORY[0x24C1FE850](v15, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  return DOCItemRenameTextView.sendEndEditingToCell(saveChanges:)(v3 & 1);
}

void DOCItemRenameTextView.backgroundColor.setter(void *a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_setBackgroundColor_, a1);
}

void (*DOCItemRenameTextView.backgroundColor.modify(uint64_t *a1))(objc_super **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  ObjectType = swift_getObjectType();
  v4[4].receiver = ObjectType;
  v4->receiver = v1;
  v4->super_class = ObjectType;
  v4[3].receiver = [(objc_super *)v4 backgroundColor];
  return DOCItemRenameTextView.backgroundColor.modify;
}

void DOCItemRenameTextView.backgroundColor.modify(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver = (*a1)[3].receiver;
  super_class = (*a1)[3].super_class;
  v4 = (*a1)[4].receiver;
  if (a2)
  {
    v2[1].receiver = super_class;
    v2[1].super_class = v4;
    objc_msgSendSuper2(v2 + 1, sel_setBackgroundColor_, receiver);
    receiver = v2[3].receiver;
  }

  else
  {
    v2[2].receiver = super_class;
    v2[2].super_class = v4;
    objc_msgSendSuper2(v2 + 2, sel_setBackgroundColor_, receiver);
  }

  free(v2);
}

Swift::Int DOCItemRenameTextView.BackgroundStyle.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

uint64_t DOCItemRenameTextView.backgroundStyle.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemRenameTextView.backgroundStyle.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle;
  swift_beginAccess();
  *(v1 + v3) = a1;
  DOCItemRenameTextView.updateBackground()();
}

void DOCItemRenameTextView.updateBackground()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit7UIShapeVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v18 - v5;
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle;
  swift_beginAccess();
  v8 = v1[v7];
  v9 = objc_opt_self();
  if (!v8)
  {
    v15 = &selRef_clearColor;
LABEL_7:
    v16 = [v9 *v15];
    v20.receiver = v1;
    v20.super_class = ObjectType;
    objc_msgSendSuper2(&v20, sel_setBackgroundColor_, v16);

    [v1 setHoverStyle_];
    v17 = DOCItemRenameTextView.backgroundView.getter();
    [v17 setHoverStyle_];

    [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___backgroundView] removeFromSuperview];
    return;
  }

  if (v8 != 1)
  {
    v15 = &selRef_systemBackgroundColor;
    goto LABEL_7;
  }

  v10 = [v9 clearColor];
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_setBackgroundColor_, v10);

  [v1 setHoverStyle_];
  v11 = DOCItemRenameTextView.backgroundView.getter();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIHoverStyle);
  static UIShape.rect(cornerRadius:cornerCurve:maskedCorners:)();
  v12 = type metadata accessor for UIShape();
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = UIHoverStyle.init(shape:)();
  [v11 setHoverStyle_];

  v14 = [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___backgroundView] superview];
  if (v14)
  {
  }

  else
  {
    DOCItemRenameTextView.installBackgroundView()();
  }
}

void (*DOCItemRenameTextView.backgroundStyle.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCItemRenameTextView.backgroundStyle.modify;
}

void DOCItemRenameTextView.backgroundStyle.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCItemRenameTextView.updateBackground()();
  }
}

uint64_t static DOCItemRenameTextView.Metrics.inlineEditingHoverStyle.getter()
{
  swift_beginAccess();
  v0 = static DOCItemRenameTextView.Metrics.inlineEditingHoverStyle;
  v1 = static DOCItemRenameTextView.Metrics.inlineEditingHoverStyle;
  return v0;
}

void static DOCItemRenameTextView.Metrics.inlineEditingHoverStyle.setter(uint64_t a1)
{
  swift_beginAccess();
  v2 = static DOCItemRenameTextView.Metrics.inlineEditingHoverStyle;
  static DOCItemRenameTextView.Metrics.inlineEditingHoverStyle = a1;
}

void key path setter for static DOCItemRenameTextView.Metrics.inlineEditingHoverStyle : DOCItemRenameTextView.Metrics.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = static DOCItemRenameTextView.Metrics.inlineEditingHoverStyle;
  static DOCItemRenameTextView.Metrics.inlineEditingHoverStyle = v1;
  v3 = v1;
}

id DOCItemRenameTextView.backgroundView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___backgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___backgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___backgroundView);
  }

  else
  {
    v4 = closure #1 in DOCItemRenameTextView.backgroundView.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void DOCItemRenameTextView.installBackgroundView()()
{
  v1 = v0;
  v2 = [v0 superview];
  if (v2)
  {
    v3 = v2;
    v4 = DOCItemRenameTextView.backgroundView.getter();
    [v3 insertSubview:v4 belowSubview:v1];

    v27 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_249BA37E0;
    v6 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___backgroundView;
    v7 = [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___backgroundView] topAnchor];
    v8 = [v1 topAnchor];
    v9 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_verticalMargin;
    v10 = [v7 constraintEqualToAnchor:v8 constant:-*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_verticalMargin]];

    *(v5 + 32) = v10;
    v11 = [*&v1[v6] leadingAnchor];
    v12 = [v1 leadingAnchor];
    [v1 textContainerInset];
    v14 = [v11 constraintEqualToAnchor:v12 constant:v13];

    *(v5 + 40) = v14;
    v15 = [*&v1[v6] trailingAnchor];
    v16 = [v1 trailingAnchor];
    [v1 textContainerInset];
    v18 = [v15 constraintEqualToAnchor:v16 constant:-v17];

    *(v5 + 48) = v18;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v27 activateConstraints_];

    v20 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle;
    swift_beginAccess();
    if (v1[v20] == 1)
    {
      [v1 contentSize];
      v22 = v21;
      [v1 bounds];
      Height = CGRectGetHeight(v28);
      if (Height >= v22)
      {
        Height = v22;
      }

      v24 = *&v1[v6];
      *&v24[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_8D051EE7059755ECA4C153AED851D97625DOCResizingBackgroundView_preferredHeight] = Height + *&v1[v9] + *&v1[v9];
      [v24 invalidateIntrinsicContentSize];
    }

    v25 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_contentSizeObserver;
    if (!*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_contentSizeObserver])
    {
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      v3 = *&v1[v25];
      *&v1[v25] = v26;
    }
  }
}

Swift::Void __swiftcall DOCItemRenameTextView.layoutSubviews()()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle;
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    [v0 contentSize];
    v3 = v2;
    [v0 bounds];
    Height = CGRectGetHeight(v24);
    if (Height >= v3)
    {
      Height = v3;
    }

    v5 = Height + *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_verticalMargin] + *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_verticalMargin];
    v6 = DOCItemRenameTextView.backgroundView.getter();
    *&v6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_8D051EE7059755ECA4C153AED851D97625DOCResizingBackgroundView_preferredHeight] = v5;
    [v6 invalidateIntrinsicContentSize];
  }

  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_showsClearButton;
  swift_beginAccess();
  if (v0[v7] == 1)
  {
    [v0 textContainerInset];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = DOCItemRenameTextView.clearButton.getter();
    [v16 frame];
    v18 = v17;

    v19 = v18 + 0.0;
    v20 = [v0 effectiveUserInterfaceLayoutDirection];
    if (v20)
    {
      v21 = v15;
    }

    else
    {
      v21 = v19;
    }

    if (v20)
    {
      v22 = v19;
    }

    else
    {
      v22 = v11;
    }

    [v0 setTextContainerInset_];
  }
}

uint64_t DOCItemRenameTextView.isBecomingFirstResponder.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isBecomingFirstResponder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemRenameTextView.isBecomingFirstResponder.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isBecomingFirstResponder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void DOCItemRenameTextView.selectDisplayName(for:)(char *a1)
{
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isDisplayingExtension) == 1)
  {
    v14.receiver = v1;
    v14.super_class = swift_getObjectType();
    v3 = objc_msgSendSuper2(&v14, sel_text);
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    v8 = specialized DOCItemRenameTextView.filenameSuffixOffset(for:node:)(v5, v7, a1);

    v9 = [v1 endOfDocument];
    if (__OFSUB__(0, v8))
    {
      __break(1u);
    }

    else
    {
      v10 = v9;
      v11 = [v1 positionFromPosition:v9 offset:-v8];

      if (v11)
      {
        v12 = [v1 beginningOfDocument];
        v13 = [v1 textRangeFromPosition:v12 toPosition:v11];

        [v1 setSelectedTextRange_];
      }
    }
  }

  else
  {

    [v1 selectAll_];
  }
}

void DOCItemRenameTextView.moveCursorAfterDisplayName(for:)(char *a1)
{
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isDisplayingExtension) != 1)
  {
    v8 = [v1 endOfDocument];
LABEL_8:
    v12 = [v1 textRangeFromPosition:v8 toPosition:v8];
    [v1 setSelectedTextRange_];

    return;
  }

  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v13, sel_text);
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v9 = specialized DOCItemRenameTextView.filenameSuffixOffset(for:node:)(v5, v7, a1);

  v10 = [v1 endOfDocument];
  if (__OFSUB__(0, v9))
  {
    __break(1u);
    return;
  }

  v11 = v10;
  v8 = [v1 positionFromPosition:v10 offset:-v9];

  if (v8)
  {
    goto LABEL_8;
  }
}

Swift::Void __swiftcall DOCItemRenameTextView.willMove(toSuperview:)(UIView_optional *toSuperview)
{
  if (!toSuperview)
  {
    v2 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle;
    swift_beginAccess();
    if (*(v1 + v2) == 1)
    {
      v3 = DOCItemRenameTextView.backgroundView.getter();
      [v3 removeFromSuperview];
    }

    v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_showsClearButton;
    swift_beginAccess();
    if (*(v1 + v4) == 1)
    {
      v5 = DOCItemRenameTextView.clearButton.getter();
      [v5 removeFromSuperview];
    }
  }
}

void DOCItemRenameTextView.editExtension(_:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isDisplayingExtension;
  if ((v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isDisplayingExtension] & 1) == 0)
  {
    v4 = ObjectType;
    v5 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_itemRenameDelegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 1);
      v7 = swift_getObjectType();
      v8 = (*(v6 + 16))(v0, v7, v6);
      v10 = v9;
      swift_unknownObjectRelease();
      if (v10)
      {
        v0[v3] = 1;
        v24 = 46;
        v25 = 0xE100000000000000;
        MEMORY[0x24C1FAEA0](v8, v10);
        v23.receiver = v0;
        v23.super_class = v4;
        v11 = objc_msgSendSuper2(&v23, sel_text);
        if (v11)
        {
          v12 = v11;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;
        }

        else
        {
          v13 = 0;
          v15 = 0xE000000000000000;
        }

        v24 = v13;
        v25 = v15;
        MEMORY[0x24C1FAEA0](46, 0xE100000000000000);

        v16 = MEMORY[0x24C1FAD20](v24, v25);

        v22.receiver = v1;
        v22.super_class = v4;
        objc_msgSendSuper2(&v22, sel_setText_, v16);

        v17 = [v1 endOfDocument];
        v18 = MEMORY[0x24C1FAF30](v8, v10);

        if (__OFSUB__(0, v18))
        {
          __break(1u);
        }

        else
        {
          v19 = [v1 positionFromPosition:v17 offset:-v18];
          if (v19)
          {
            v20 = v19;
            v21 = [v1 textRangeFromPosition:v19 toPosition:v17];
            [v1 setSelectedTextRange_];
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall DOCItemRenameTextView.didMoveToSuperview()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_didMoveToSuperview);
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    DOCItemRenameTextView.installBackgroundView()();
  }

  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_showsClearButton;
  swift_beginAccess();
  if (*(v0 + v2) == 1)
  {
    DOCItemRenameTextView.installClearButton()();
  }
}

void DOCItemRenameTextView.installClearButton()()
{
  v1 = [v0 superview];
  if (v1)
  {
    v2 = v1;
    v3 = DOCItemRenameTextView.clearButton.getter();
    [v2 insertSubview:v3 aboveSubview:v0];

    v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton;
    v5 = [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton] trailingAnchor];
    v6 = [v0 trailingAnchor];
    v7 = [v5 constraintEqualToAnchor:v6 constant:-3.0];

    v8 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle;
    swift_beginAccess();
    LODWORD(v6) = v0[v8];
    v9 = [*&v0[v4] centerYAnchor];
    if (v6 == 1)
    {
      v10 = DOCItemRenameTextView.backgroundView.getter();
      v11 = [v10 centerYAnchor];
    }

    else
    {
      v11 = [v0 centerYAnchor];
    }

    v12 = [v9 constraintEqualToAnchor:v11 constant:1.0];

    v13 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_249BA1010;
    *(v14 + 32) = v7;
    *(v14 + 40) = v12;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v15 = v12;
    v16 = v7;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 activateConstraints_];
  }
}

uint64_t DOCItemRenameTextView.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (static Selector.== infix(_:_:)())
  {
    return 0;
  }

  if (static Selector.== infix(_:_:)())
  {
    return 1;
  }

  outlined init with copy of Any?(a2, v16);
  v7 = v17;
  if (v17)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x28223BE20](v8, v8);
    v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v13 = 0;
  }

  v15.receiver = v2;
  v15.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v15, sel_canPerformAction_withSender_, a1, v13);
  swift_unknownObjectRelease();
  return v14;
}

double DOCItemRenameTextView.heightByMeasuring(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = [v2 selectedRange];
  v8 = v7;
  v21.receiver = v2;
  v21.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v21, sel_text);
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = MEMORY[0x24C1FAD20](a1, a2);
  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_setText_, v14);

  [v2 setNeedsLayout];
  [v2 layoutIfNeeded];
  [v2 contentSize];
  v16 = v15;
  v17 = MEMORY[0x24C1FAD20](v11, v13);

  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_setText_, v17);

  [v2 setSelectedRange_];
  return v16;
}

id closure #1 in DOCItemRenameTextView.backgroundView.getter()
{
  v0 = [objc_allocWithZone(type metadata accessor for DOCResizingBackgroundView()) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v1) = 1144750080;
  [v0 setContentHuggingPriority:1 forAxis:v1];
  [v0 setClipsToBounds_];
  v2 = [objc_opt_self() secondarySystemFillColor];
  [v0 setBackgroundColor_];

  v3 = [v0 layer];
  [v3 setCornerRadius_];

  v4 = [v0 layer];
  [v4 setCornerCurve_];

  LODWORD(v5) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v5];
  LODWORD(v6) = 1144750080;
  [v0 setContentHuggingPriority:1 forAxis:v6];
  return v0;
}

void closure #1 in DOCItemRenameTextView.installBackgroundView()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong contentSize];
    if (v2 > 0.0)
    {
      v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle;
      swift_beginAccess();
      if (v1[v3] == 1)
      {
        [v1 contentSize];
        v5 = v4;
        [v1 bounds];
        Height = CGRectGetHeight(v9);
        if (Height >= v5)
        {
          Height = v5;
        }

        v7 = Height + *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_verticalMargin] + *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_verticalMargin];
        v8 = DOCItemRenameTextView.backgroundView.getter();
        *&v8[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_8D051EE7059755ECA4C153AED851D97625DOCResizingBackgroundView_preferredHeight] = v7;
        [v8 invalidateIntrinsicContentSize];
      }
    }
  }
}

uint64_t DOCItemRenameTextView.showsClearButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_showsClearButton;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemRenameTextView.showsClearButton.setter(char a1)
{
  v3 = a1 & 1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_showsClearButton;
  swift_beginAccess();
  v6 = v1[v5];
  v1[v5] = a1;
  if (v6 == v3)
  {
    return;
  }

  if ((a1 & 1) == 0)
  {
    v14 = DOCItemRenameTextView.clearButton.getter();
    [v14 removeFromSuperview];

    return;
  }

  DOCItemRenameTextView.installClearButton()();
  if ((v1[v5] & 1) == 0)
  {
    return;
  }

  v7 = DOCItemRenameTextView.clearButton.getter();
  v8 = [v7 isHidden];

  v16.receiver = v1;
  v16.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v16, sel_text);
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11)
    {
LABEL_13:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8 != (v15 & 1))
      {
        goto LABEL_14;
      }

      return;
    }
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  if (v13 != 0xE000000000000000)
  {
    goto LABEL_13;
  }

  if ((v8 & 1) == 0)
  {
    v15 = 1;
LABEL_14:
    [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton] setHidden_];
  }
}

void (*DOCItemRenameTextView.showsClearButton.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_showsClearButton;
  *(v4 + 48) = ObjectType;
  *(v4 + 56) = v6;
  swift_beginAccess();
  *(v4 + 64) = *(v1 + v6);
  return DOCItemRenameTextView.showsClearButton.modify;
}

void DOCItemRenameTextView.showsClearButton.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    DOCItemRenameTextView.showsClearButton.setter(v3);
    goto LABEL_10;
  }

  v4 = *(v2 + 56);
  v5 = *(v2 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (v3 != v6)
  {
    if (!v3)
    {
      v16 = DOCItemRenameTextView.clearButton.getter();
      [v16 removeFromSuperview];

      goto LABEL_10;
    }

    v7 = *(v2 + 56);
    v8 = *(v2 + 40);
    DOCItemRenameTextView.installClearButton()();
    if ((*(v8 + v7) & 1) == 0)
    {
      goto LABEL_10;
    }

    v18 = *(v2 + 40);
    v9 = DOCItemRenameTextView.clearButton.getter();
    v10 = [v9 isHidden];

    *(v2 + 24) = v18;
    v11 = objc_msgSendSuper2((v2 + 24), sel_text);
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if (v13)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    if (v15 == 0xE000000000000000)
    {

      if (v10)
      {
        goto LABEL_10;
      }

      v17 = 1;
LABEL_18:
      [*(*(v2 + 40) + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton) setHidden_];
      goto LABEL_10;
    }

LABEL_17:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10 == (v17 & 1))
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_10:

  free(v2);
}

void DOCItemRenameTextView.clearButton.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton) = a1;
}

id closure #1 in DOCItemRenameTextView.clearButton.getter()
{
  v0 = type metadata accessor for UIButton.Configuration();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v31 - v8;
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v31 - v11;
  v13 = objc_opt_self();

  static UIButton.Configuration.borderless()();
  v14 = [objc_opt_self() configurationWithScale_];
  v15 = objc_opt_self();
  v16 = MEMORY[0x24C1FAD20](0xD000000000000011, 0x8000000249BDDBA0);
  v17 = [v15 __systemImageNamedSwift_];

  if (v17)
  {
    v18 = [v17 imageWithConfiguration_];
  }

  UIButton.Configuration.image.setter();
  v19 = [objc_opt_self() secondaryLabelColor];
  UIButton.Configuration.baseForegroundColor.setter();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIButton);
  v20 = *(v1 + 16);
  v20(v9, v12, v0);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20(v5, v9, v0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for closure #3 in closure #1 in DOCItemRenameTextView.clearButton.getter;
  *(v22 + 24) = v21;
  swift_retain_n();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v23 = UIButton.init(configuration:primaryAction:)();

  v24 = *(v1 + 8);
  v24(v9, v0);

  v25 = v23;
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v26) = 1148846080;
  [v25 setContentCompressionResistancePriority:0 forAxis:v26];
  LODWORD(v27) = 1148846080;
  [v25 setContentCompressionResistancePriority:1 forAxis:v27];
  v28 = [v25 heightAnchor];

  v29 = [v28 constraintGreaterThanOrEqualToConstant_];
  [v29 setActive_];

  v24(v12, v0);
  return v25;
}

void closure #3 in closure #1 in DOCItemRenameTextView.clearButton.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DOCItemRenameTextView.clearText()();
  }
}

id DOCItemRenameTextView.clearText()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v55.receiver = v0;
  v55.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v55, sel_text);
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = MEMORY[0x24C1FAD20](v5, v7);

  v9 = [v8 pathExtension];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isDisplayingExtension;
  if (v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isDisplayingExtension] != 1)
  {
    goto LABEL_11;
  }

  v48.receiver = v1;
  v48.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v48, sel_text);
  if (v14)
  {
    v15 = v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v16._countAndFlagsBits = 46;
  v16._object = 0xE100000000000000;
  v17 = String.hasPrefix(_:)(v16);

  if (v17)
  {
    v18 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v18 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18)
    {
    }
  }

LABEL_11:
  v19 = [v1 undoManager];
  if (v19)
  {
    v20 = v19;
    v49.receiver = v1;
    v49.super_class = ObjectType;
    v21 = objc_msgSendSuper2(&v49, sel_text);
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xE000000000000000;
    }

    v26 = MEMORY[0x24C1FAD20](v23, v25);

    [v20 registerUndoWithTarget:v1 selector:sel_undoClearTextWithPreviousText_ object:v26];
  }

  if (v1[v13] != 1)
  {
    goto LABEL_21;
  }

  v27 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v27 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v52 = 46;
    v53 = 0xE100000000000000;
    MEMORY[0x24C1FAEA0](v10, v12);

    v28 = MEMORY[0x24C1FAD20](v52, v53);

    v50.receiver = v1;
    v50.super_class = ObjectType;
    objc_msgSendSuper2(&v50, sel_setText_, v28);

    v29 = [v1 beginningOfDocument];
    v30 = [v1 beginningOfDocument];
    v31 = [v1 textRangeFromPosition:v29 toPosition:v30];

    [v1 setSelectedTextRange_];
  }

  else
  {
LABEL_21:

    v31 = MEMORY[0x24C1FAD20](0, 0xE000000000000000);
    v54.receiver = v1;
    v54.super_class = ObjectType;
    objc_msgSendSuper2(&v54, sel_setText_, v31);
  }

  v32 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle;
  swift_beginAccess();
  if (v1[v32] == 1)
  {
    [v1 contentSize];
    v34 = v33;
    [v1 bounds];
    Height = CGRectGetHeight(v56);
    if (Height >= v34)
    {
      Height = v34;
    }

    v36 = Height + *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_verticalMargin] + *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_verticalMargin];
    v37 = DOCItemRenameTextView.backgroundView.getter();
    *&v37[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_8D051EE7059755ECA4C153AED851D97625DOCResizingBackgroundView_preferredHeight] = v36;
    [v37 invalidateIntrinsicContentSize];
  }

  v38 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_showsClearButton;
  result = swift_beginAccess();
  if (v1[v38] == 1)
  {
    v40 = DOCItemRenameTextView.clearButton.getter(result);
    v41 = [v40 isHidden];

    v51.receiver = v1;
    v51.super_class = ObjectType;
    v42 = objc_msgSendSuper2(&v51, sel_text);
    if (v42)
    {
      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      if (v44)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v46 = 0xE000000000000000;
    }

    if (v46 == 0xE000000000000000)
    {

      if (v41)
      {
        return result;
      }

      v47 = 1;
      return [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton] setHidden_];
    }

LABEL_34:
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41 == (v47 & 1))
    {
      return result;
    }

    return [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton] setHidden_];
  }

  return result;
}

void (*DOCItemRenameTextView.clearButton.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCItemRenameTextView.clearButton.getter();
  return DOCItemRenameTextView.clearButton.modify;
}

void DOCItemRenameTextView.clearButton.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton) = v2;
}

uint64_t DOCItemRenameTextView.keyCommands.getter()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v7, sel_keyCommands);
  if (v1)
  {
    v2 = v1;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v8 = v3;
  v4 = MEMORY[0x24C1FAD20](13, 0xE100000000000000);
  v5 = [objc_opt_self() keyCommandWithInput:v4 modifierFlags:0 action:sel_endEdtingCell];

  MEMORY[0x24C1FB090]();
  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v8;
}

Swift::Bool __swiftcall DOCItemRenameTextView.textView(_:shouldChangeTextIn:replacementText:)(UITextView *_, __C::_NSRange shouldChangeTextIn, Swift::String replacementText)
{
  object = replacementText._object;
  countAndFlagsBits = replacementText._countAndFlagsBits;
  v5 = [(UITextView *)_ markedTextRange];
  if (v5)
  {

    return 1;
  }

  if ((countAndFlagsBits != 10 || object != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 1;
  }

  DOCItemRenameTextView.sendEndEditingToCell(saveChanges:)(1);
  return 0;
}

Swift::Void __swiftcall DOCItemRenameTextView.textViewDidChange(_:)(UITextView *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [(UITextView *)a1 markedTextRange];
  if (v4)
  {

    return;
  }

  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle;
  swift_beginAccess();
  if (v1[v5] == 1)
  {
    [v1 contentSize];
    v7 = v6;
    [v1 bounds];
    Height = CGRectGetHeight(v22);
    if (Height >= v7)
    {
      Height = v7;
    }

    v9 = Height + *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_verticalMargin] + *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_verticalMargin];
    v10 = DOCItemRenameTextView.backgroundView.getter();
    *&v10[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_8D051EE7059755ECA4C153AED851D97625DOCResizingBackgroundView_preferredHeight] = v9;
    [v10 invalidateIntrinsicContentSize];
  }

  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_showsClearButton;
  swift_beginAccess();
  if (v1[v11] == 1)
  {
    v12 = DOCItemRenameTextView.clearButton.getter();
    v13 = [v12 isHidden];

    v20.receiver = v1;
    v20.super_class = ObjectType;
    v14 = [(UITextView *)&v20 text];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if (v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v18 = 0xE000000000000000;
    }

    if (v18 == 0xE000000000000000)
    {

      if (v13)
      {
        return;
      }

      v19 = 1;
LABEL_18:
      [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton] setHidden_];
      return;
    }

LABEL_17:
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13 == (v19 & 1))
    {
      return;
    }

    goto LABEL_18;
  }
}

uint64_t closure #1 in DOCItemRenameTextView.textView(_:editMenuForTextIn:suggestedActions:)(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v5[3] = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v5[0] = a1;
    v4 = a1;
    DOCItemRenameTextView.editExtension(_:)();

    return outlined destroy of Any?(v5);
  }

  return result;
}

id DOCItemRenameTextView.__allocating_init(frame:textContainer:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 textContainer:{a2, a3, a4, a5}];

  return v7;
}

id @objc DOCItemRenameTextView.backgroundColor.getter(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

id DOCItemRenameTextView.backgroundColor.getter(SEL *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, *a1);

  return v3;
}

uint64_t (*DOCItemRenameTextView.delegate.modify(objc_super *a1))()
{
  ObjectType = swift_getObjectType();
  a1->receiver = v1;
  a1->super_class = ObjectType;
  a1[1].receiver = [(objc_super *)a1 delegate];
  return DOCItemRenameTextView.delegate.modify;
}

uint64_t DOCItemRenameTextView.text.getter()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v5, sel_text);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void DOCItemRenameTextView.text.setter(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v6 = MEMORY[0x24C1FAD20](a1, a2);
  }

  else
  {
    v6 = 0;
  }

  v7.receiver = v2;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, sel_setText_, v6);
}

void (*DOCItemRenameTextView.text.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  ObjectType = swift_getObjectType();
  v5[1].receiver = v2;
  v5[4].super_class = ObjectType;
  v5[1].super_class = ObjectType;
  v7 = objc_msgSendSuper2(v5 + 1, sel_text);
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v5->receiver = v9;
  v5->super_class = v11;
  return DOCItemRenameTextView.text.modify;
}

void DOCItemRenameTextView.text.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (a2)
  {
    if (v3)
    {
      v4 = *v2;

      v5 = MEMORY[0x24C1FAD20](v4, v3);
    }

    else
    {
      v5 = 0;
    }

    *(v2 + 2) = *(v2 + 4);
    objc_msgSendSuper2(v2 + 2, sel_setText_, v5);
  }

  else
  {
    if (v3)
    {
      v6 = MEMORY[0x24C1FAD20](*v2, v3);
    }

    else
    {
      v6 = 0;
    }

    *(v2 + 3) = *(v2 + 4);
    objc_msgSendSuper2(v2 + 3, sel_setText_, v6);
  }

  free(v2);
}

char *specialized DOCItemRenameTextView.filenameSuffixOffset(for:node:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    goto LABEL_15;
  }

  v12 = [a3 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UTType.preferredFilenameExtension.getter();
  a3 = v14;
  (*(v7 + 8))(v11, v6);
  if (!a3)
  {
    goto LABEL_15;
  }

  v15 = MEMORY[0x24C1FAD20](a1, a2);
  v16 = [v15 pathExtension];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v13 == v17 && a3 == v19)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v22 = MEMORY[0x24C1FAF30](v13, a3);

  if (v22 < 1)
  {
LABEL_14:

    a3 = 0;
    goto LABEL_15;
  }

  v23 = MEMORY[0x24C1FAF30](v13, a3);

  a3 = (v23 + 1);
  if (__OFADD__(v23, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:

  v24 = specialized BidirectionalCollection.dropLast(_:)(a3);
  v26 = v25;
  v28 = v27;
  v30 = v29;

  MEMORY[0x24C1FAE00](v24, v26, v28, v30);

  v31 = String.fileSuffixChain()();

  v32 = MEMORY[0x24C1FAF30](v31._countAndFlagsBits, v31._object);

  result = &a3[v32];
  if (__OFADD__(a3, v32))
  {
    __break(1u);
  }

  return result;
}

void specialized DOCItemRenameTextView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_itemRenameDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_canDisplayExtension) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isDisplayingExtension) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___notificationsController) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isBecomingFirstResponder) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_verticalMargin) = 0x4000000000000000;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_contentSizeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_showsClearButton) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized DOCItemRenameTextView.textView(_:editMenuForTextIn:suggestedActions:)(UIMenuElementSize a1)
{
  preferredElementSize = a1;
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_canDisplayExtension) != 1)
  {

    goto LABEL_8;
  }

  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isDisplayingExtension);

  if (v3)
  {
LABEL_8:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v14.value.super.isa = 0;
    v14.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v11, v10, 0, v14, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v12);
    return;
  }

  v4 = _DocumentManagerBundle();
  if (v4)
  {
    v5 = v4;
    swift__string._object = 0x8000000249BDDB00;
    v6._countAndFlagsBits = 0x7478452074696445;
    v6._object = 0xEE006E6F69736E65;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    swift__string._countAndFlagsBits = 0xD000000000000052;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, swift__string);

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v12._rawValue = 0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    MEMORY[0x24C1FB090](v9);
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    preferredElementSize = a1;
    goto LABEL_8;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type DOCItemRenameTextView.BackgroundStyle and conformance DOCItemRenameTextView.BackgroundStyle()
{
  result = lazy protocol witness table cache variable for type DOCItemRenameTextView.BackgroundStyle and conformance DOCItemRenameTextView.BackgroundStyle;
  if (!lazy protocol witness table cache variable for type DOCItemRenameTextView.BackgroundStyle and conformance DOCItemRenameTextView.BackgroundStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemRenameTextView.BackgroundStyle and conformance DOCItemRenameTextView.BackgroundStyle);
  }

  return result;
}

uint64_t key path getter for TrashItemsIntent.entities : TrashItemsIntent@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

void (*TrashItemsIntent.entities.modify(uint64_t *a1))(void *a1)
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

uint64_t static TrashItemsIntent.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static TrashItemsIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static TrashItemsIntent.authenticationPolicy.setter(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static TrashItemsIntent.authenticationPolicy);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static TrashItemsIntent.authenticationPolicy.modify())()
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_project_value_buffer(v0, static TrashItemsIntent.authenticationPolicy);
  swift_beginAccess();
  return DOCSmartFolderManager.defaultSaveLocationItemId.modify;
}

uint64_t key path getter for static TrashItemsIntent.authenticationPolicy : TrashItemsIntent.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static TrashItemsIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t key path setter for static TrashItemsIntent.authenticationPolicy : TrashItemsIntent.Type(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static TrashItemsIntent.authenticationPolicy);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static TrashItemsIntent.openAppWhenRun.setter(char a1)
{
  result = swift_beginAccess();
  static TrashItemsIntent.openAppWhenRun = a1;
  return result;
}

uint64_t TrashItemsIntent.perform()(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = type metadata accessor for ConfirmationActionName();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for ConfirmationConditions();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for IntentDialog();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[23] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[24] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v7 = type metadata accessor for LocalizedStringResource();
  v2[27] = v7;
  v2[28] = *(v7 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v8 = type metadata accessor for FINodeEntity();
  v2[33] = v8;
  v2[34] = *(v8 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](TrashItemsIntent.perform(), 0, 0);
}

uint64_t TrashItemsIntent.perform()()
{
  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x277D84F90];
  v86 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v0 + 288);
    v5 = *(v0 + 272);
    v6 = *(*(v0 + 264) + 32);
    v7 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v8 = *(v5 + 72);
    do
    {
      v9 = *(v0 + 288);
      outlined init with copy of FINodeEntity(v7, v9);
      v10 = *(v4 + v6);
      v11 = outlined destroy of FINodeEntity(v9);
      MEMORY[0x24C1FB090](v11);
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 += v8;
      --v3;
    }

    while (v3);

    v12 = v86;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  *(v0 + 296) = v12;
  if (v12 >> 62)
  {
    v72 = v12;
    v13 = __CocoaSet.count.getter();
    v12 = v72;
    if (v13)
    {
LABEL_10:
      v14 = v12;
      *(v0 + 24) = v2;
      *(v0 + 32) = v2;
      v85 = objc_opt_self();
      *(v0 + 304) = v85;
      if (v13 < 1)
      {
        __break(1u);
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v81 = *MEMORY[0x277CC6058];
        v17 = v14;
        v80 = v14 & 0xC000000000000001;
        v79 = *MEMORY[0x277CC5FE0];
        v18 = MEMORY[0x277D84F90];
        v78 = MEMORY[0x277D84F90];
        v82 = v14;
        do
        {
          if (v80)
          {
            v20 = MEMORY[0x24C1FC540](v15, v17);
          }

          else
          {
            v20 = *(v17 + 8 * v15 + 32);
          }

          v21 = v20;
          v22 = MEMORY[0x24C1FDA70]();
          v23 = [v85 defaultManager];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_249BA0290;
          *(v24 + 32) = v21;
          type metadata accessor for FPItem();
          v25 = v21;
          isa = Array._bridgeToObjectiveC()().super.isa;

          v27 = [v23 eligibleActionsForItems_];

          type metadata accessor for FPAction(0);
          _sSo8FPActionaABSHSCWlTm_0(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
          v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          if (specialized Set.contains(_:)(v81, v28))
          {

            v19 = v25;
            MEMORY[0x24C1FB090]();
            if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v18 = *(v0 + 24);
          }

          else
          {
            v29 = specialized Set.contains(_:)(v79, v28);

            if (v29)
            {
              v30 = v25;
              MEMORY[0x24C1FB090]();
              if (*((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v78 = *(v0 + 32);
            }
          }

          ++v15;
          *(v0 + 312) = v18;
          *(v0 + 320) = v18;
          v16 |= [v25 isCloudItem];
          objc_autoreleasePoolPop(v22);

          v17 = v82;
        }

        while (v13 != v15);
        v13 = v78;
        v14 = v78 >> 62;
        if (!(v78 >> 62))
        {
          v31 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v31)
          {
            goto LABEL_26;
          }

LABEL_47:
          *(v0 + 368) = v13;
          v75 = [*(v0 + 304) defaultManager];
          *(v0 + 376) = v75;
          v76 = swift_task_alloc();
          *(v0 + 384) = v76;
          *v76 = v0;
          v76[1] = TrashItemsIntent.perform();
          v77 = *(v0 + 296);

          return specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:)(v77, 1, v75);
        }
      }

      if (__CocoaSet.count.getter())
      {
        v31 = __CocoaSet.count.getter();
LABEL_26:
        if (v31 != 1)
        {
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v52._object = 0x8000000249BDDBC0;
          v52._countAndFlagsBits = 0xD00000000000002FLL;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v52);
          if (v14)
          {
            v53 = __CocoaSet.count.getter();
          }

          else
          {
            v53 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v54 = *(v0 + 176);
          v55 = *(v0 + 160);
          v56 = *(v0 + 168);
          *(v0 + 40) = v53;
          String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
          v57._countAndFlagsBits = 0;
          v57._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v57);
          String.LocalizationValue.init(stringInterpolation:)();
          static Locale.current.getter();
          v58 = *MEMORY[0x277CC9110];
          v59 = *(v56 + 104);
          v59(v54, v58, v55);
          LocalizedStringResource.init(_:table:locale:bundle:comment:)();
          v60 = *(v0 + 176);
          v61 = *(v0 + 160);
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v59(v60, v58, v61);
          goto LABEL_37;
        }

        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v32._countAndFlagsBits = 0xD000000000000031;
        v32._object = 0x8000000249BDDDA0;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
        if (v13 >> 62)
        {
          v37 = __CocoaSet.count.getter();
          if (v37)
          {
LABEL_29:
            if ((v13 & 0xC000000000000001) == 0)
            {
              if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return MEMORY[0x28210B508](v37, v33, v34, v35, v36);
              }

              v38 = *(v13 + 32);
              goto LABEL_32;
            }

LABEL_52:
            v38 = MEMORY[0x24C1FC540](0, v13);
LABEL_32:
            v39 = v38;
            v41 = *(v0 + 168);
            v40 = *(v0 + 176);
            v83 = *(v0 + 160);
            v42 = [v38 displayName];

            v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v45 = v44;

            v46._countAndFlagsBits = v43;
            v46._object = v45;
            String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v46);

            v47._countAndFlagsBits = 63;
            v47._object = 0xE100000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v47);
            String.LocalizationValue.init(stringInterpolation:)();
            static Locale.current.getter();
            v48 = *MEMORY[0x277CC9110];
            v49 = *(v41 + 104);
            v49(v40, v48, v83);
            LocalizedStringResource.init(_:table:locale:bundle:comment:)();
            v50 = *(v0 + 176);
            v51 = *(v0 + 160);
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            v49(v50, v48, v51);
LABEL_37:
            LocalizedStringResource.init(_:table:locale:bundle:comment:)();
            *(v0 + 328) = v78;
            v62 = *(v0 + 248);
            v64 = *(v0 + 232);
            v63 = *(v0 + 240);
            v65 = *(v0 + 216);
            v66 = *(v0 + 224);
            v84 = v65;
            v67 = *(v0 + 80);
            v68 = *(v66 + 16);
            v68(v63, *(v0 + 256), v65);
            v68(v64, v62, v65);
            v69 = v63;
            IntentDialog.init(full:supporting:)();
            *(v0 + 48) = v67;
            *(v0 + 56) = MEMORY[0x277D84F90];
            _sSo8FPActionaABSHSCWlTm_0(&lazy protocol witness table cache variable for type ConfirmationConditions and conformance ConfirmationConditions, MEMORY[0x277CBA298]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10AppIntents22ConfirmationConditionsVGMd);
            lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [ConfirmationConditions] and conformance [A], &_sSay10AppIntents22ConfirmationConditionsVGMd);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            LocalizedStringResource.init(stringLiteral:)();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMd);
            *(swift_allocObject() + 16) = xmmword_249B9A480;
            LocalizedStringResource.init(stringLiteral:)();
            LocalizedStringResource.init(stringLiteral:)();
            *(swift_allocObject() + 16) = xmmword_249B9A480;
            LocalizedStringResource.init(stringLiteral:)();
            static ConfirmationActionName.custom(acceptLabel:acceptAlternatives:denyLabel:denyAlternatives:destructive:)();

            v70 = *(v66 + 8);
            *(v0 + 336) = v70;
            *(v0 + 344) = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v70(v64, v84);
            v70(v69, v84);
            v71 = swift_task_alloc();
            *(v0 + 352) = v71;
            v36 = lazy protocol witness table accessor for type TrashItemsIntent and conformance TrashItemsIntent();
            *v71 = v0;
            v71[1] = TrashItemsIntent.perform();
            v34 = *(v0 + 152);
            v37 = *(v0 + 128);
            v33 = *(v0 + 104);
            v35 = &type metadata for TrashItemsIntent;

            return MEMORY[0x28210B508](v37, v33, v34, v35, v36);
          }
        }

        else
        {
          v37 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v37)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
        goto LABEL_52;
      }

      goto LABEL_47;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_10;
    }
  }

  lazy protocol witness table accessor for type TrashItemsIntent.TrashError and conformance TrashItemsIntent.TrashError();
  swift_allocError();
  swift_willThrow();

  v73 = *(v0 + 8);

  return v73();
}

{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = v2[15];
    v3 = v2[16];
    v6 = v2[13];
    v5 = v2[14];
    v9 = v2 + 11;
    v7 = v2[11];
    v8 = v9[1];

    (*(v8 + 8))(v6, v7);
    (*(v4 + 8))(v3, v5);
    v10 = TrashItemsIntent.perform();
  }

  else
  {
    v12 = v2[15];
    v11 = v2[16];
    v13 = v2[14];
    (*(v2[12] + 8))(v2[13], v2[11]);
    (*(v12 + 8))(v11, v13);
    v10 = TrashItemsIntent.perform();
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

{
  v1 = *(v0 + 336);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 216);
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  v1(v2, v4);
  v1(v3, v4);
  *(v0 + 368) = *(v0 + 328);
  v5 = [*(v0 + 304) defaultManager];
  *(v0 + 376) = v5;
  v6 = swift_task_alloc();
  *(v0 + 384) = v6;
  *v6 = v0;
  v6[1] = TrashItemsIntent.perform();
  v7 = *(v0 + 296);

  return specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:)(v7, 1, v5);
}

{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 376);
  if (v0)
  {

    v4 = TrashItemsIntent.perform();
  }

  else
  {

    v4 = TrashItemsIntent.perform();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[42];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[27];
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1(v3, v4);
  v1(v2, v4);

  v5 = v0[1];

  return v5();
}

{

  v1 = *(v0 + 8);

  return v1();
}

size_t TrashItemsIntent.perform()()
{
  v1 = v0[40];
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = v0[34];
    v3 = v13;
    v7 = v0[40] + 32;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1FC540](v5, v0[40]);
      }

      else
      {
        v8 = *(v7 + 8 * v5);
      }

      FINodeEntity.init(item:)(v8, v0[35]);
      v10 = *(v13 + 16);
      v9 = *(v13 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v10 + 1, 1);
      }

      v11 = v0[35];
      ++v5;
      *(v13 + 16) = v10 + 1;
      outlined init with take of FINodeEntity(v11, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10);
    }

    while (v2 != v5);
  }

  v0[8] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables12FINodeEntityVGSgMd);
  lazy protocol witness table accessor for type [FINodeEntity]? and conformance <A> A?();
  static IntentResult.result<A>(value:)();

  v12 = v0[1];

  return v12();
}

uint64_t closure #3 in TrashItemsIntent.perform()()
{
  return MEMORY[0x2822009F8](closure #3 in TrashItemsIntent.perform(), 0, 0);
}

{
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.AppIntents);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2493AC000, v2, v3, "Items are about to be deleted/trashed without usual confirmation because confirmation happened as part of the DeleteIntent flow ahead of the intent execution", v4, 2u);
    MEMORY[0x24C1FE850](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t TrashItemsIntent.TrashError.localizedStringResource.getter()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8, v8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

Swift::Int TrashItemsIntent.TrashError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](0);
  return Hasher._finalize()();
}

uint64_t TrashItemsIntent.authenticationPolicy.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
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

uint64_t static TrashItemsIntent.__assistantSchemaIntent.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for __assistantSchemaIntent != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for AssistantSchema();
  v3 = __swift_project_value_buffer(v2, static TrashItemsIntent.__assistantSchemaIntent);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static AppIntent.title.getter in conformance TrashItemsIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TrashItemsIntent and conformance TrashItemsIntent();

  return MEMORY[0x28210BFE8](a1, v2);
}

uint64_t protocol witness for AppIntent.perform() in conformance TrashItemsIntent(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return TrashItemsIntent.perform()(a1, v4);
}

uint64_t protocol witness for AppIntent.init() in conformance TrashItemsIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of TrashItemsIntent.init(entities:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance TrashItemsIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TrashItemsIntent and conformance TrashItemsIntent();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t lazy protocol witness table accessor for type TrashItemsIntent and conformance TrashItemsIntent()
{
  result = lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent;
  if (!lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent;
  if (!lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent;
  if (!lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent;
  if (!lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent;
  if (!lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent;
  if (!lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [FINodeEntity]? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type [FINodeEntity]? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type [FINodeEntity]? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables12FINodeEntityVGSgMd);
    lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FINodeEntity]? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TrashItemsIntent.TrashError and conformance TrashItemsIntent.TrashError()
{
  result = lazy protocol witness table cache variable for type TrashItemsIntent.TrashError and conformance TrashItemsIntent.TrashError;
  if (!lazy protocol witness table cache variable for type TrashItemsIntent.TrashError and conformance TrashItemsIntent.TrashError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrashItemsIntent.TrashError and conformance TrashItemsIntent.TrashError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrashItemsIntent.TrashError and conformance TrashItemsIntent.TrashError;
  if (!lazy protocol witness table cache variable for type TrashItemsIntent.TrashError and conformance TrashItemsIntent.TrashError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrashItemsIntent.TrashError and conformance TrashItemsIntent.TrashError);
  }

  return result;
}

uint64_t default argument 0 of TrashItemsIntent.init(entities:)()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v21 - v15;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMd);
  v17 = type metadata accessor for LocalizedStringResource();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v21[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static UTType.item.getter();
  static UTType.folder.getter();
  v18 = type metadata accessor for IntentDialog();
  v19 = *(*(v18 - 8) + 56);
  v19(v12, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v1 + 104))(v4, *MEMORY[0x277CBA308], v0);
  _sSo8FPActionaABSHSCWlTm_0(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);
  return IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t _sSo8FPActionaABSHSCWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

id key path getter for NSProgress.fractionCompleted : NSProgress@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t DOCGenericOperationProgress.__allocating_init(operation:observing:)(void *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v10[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v5, v4);
  outlined init with copy of DOCSidebarItemIconProvider(a1, v9);
  v7 = specialized DOCOperationProgress.init(_:progressProvider:observing:)(v10, v9, a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

void DOCProgressState.init(_:)(void *a1@<X0>, char *a2@<X8>)
{
  if ([a1 isCancelled])
  {

    v4 = 1;
  }

  else if ([a1 isFinished] || (objc_msgSend(a1, sel_fractionCompleted), v5 >= 1.0))
  {

    v4 = 0;
  }

  else
  {
    v6 = [a1 isPaused];

    if (v6)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }
  }

  *a2 = v4;
}

uint64_t DOCFileOperationProgress.__allocating_init(operation:observing:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCFileOperation();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v15 - v10;
  v12 = swift_allocObject();
  outlined init with copy of DOCFileOperation(a1, v11);
  outlined init with copy of DOCFileOperation(a1, v7);
  v13 = specialized DOCOperationProgress.init(_:progressProvider:observing:)(v11, v7, a2, v12);
  outlined destroy of DOCFileOperation(a1);
  return v13;
}

uint64_t DOCProgressValue.description.getter()
{
  if (*(v0 + 8))
  {
    return 0x6D72657465646E69;
  }

  Double.write<A>(to:)();
  MEMORY[0x24C1FAEA0](0x6C706D6F63202520, 0xEC00000064657465);
  return 0;
}

BOOL static DOCProgressValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t DOCProgressValue.hash(into:)()
{
  if (v0[1])
  {
    return MEMORY[0x24C1FCBD0](0);
  }

  v2 = *v0;
  MEMORY[0x24C1FCBD0](1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x24C1FCC00](v3);
}

Swift::Int DOCProgressValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x24C1FCBD0](0);
  }

  else
  {
    MEMORY[0x24C1FCBD0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x24C1FCC00](v3);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCProgressValue()
{
  if (v0[1])
  {
    return MEMORY[0x24C1FCBD0](0);
  }

  v2 = *v0;
  MEMORY[0x24C1FCBD0](1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x24C1FCC00](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCProgressValue()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x24C1FCBD0](0);
  }

  else
  {
    MEMORY[0x24C1FCBD0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x24C1FCC00](v3);
  }

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCProgressValue(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCProgressValue()
{
  if (*(v0 + 8))
  {
    return 0x6D72657465646E69;
  }

  Double.write<A>(to:)();
  MEMORY[0x24C1FAEA0](0x6C706D6F63202520, 0xEC00000064657465);
  return 0;
}

BOOL static DOCProgressState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

void DOCProgressState.hash(into:)()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (v1 == 3)
  {
    v2 = 1;
LABEL_5:
    MEMORY[0x24C1FCBD0](v2);
    return;
  }

  MEMORY[0x24C1FCBD0](2);
  Hasher._combine(_:)(v1 & 1);
}

Swift::Int DOCProgressState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x24C1FCBD0](2);
      Hasher._combine(_:)(v1 & 1);
      return Hasher._finalize()();
    }

    v2 = 1;
  }

  MEMORY[0x24C1FCBD0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCProgressState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x24C1FCBD0](2);
      Hasher._combine(_:)(v1 & 1);
      return Hasher._finalize()();
    }

    v2 = 1;
  }

  MEMORY[0x24C1FCBD0](v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance DOCProgressState()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (v1 == 3)
  {
    v2 = 1;
LABEL_5:
    MEMORY[0x24C1FCBD0](v2);
    return;
  }

  MEMORY[0x24C1FCBD0](2);
  Hasher._combine(_:)(v1 & 1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCProgressState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x24C1FCBD0](2);
      Hasher._combine(_:)(v1 & 1);
      return Hasher._finalize()();
    }

    v2 = 1;
  }

  MEMORY[0x24C1FCBD0](v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCProgressState(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t DOCFileOperationProgress.init(operation:observing:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DOCFileOperation();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v15 - v11;
  outlined init with copy of DOCFileOperation(a1, &v15 - v11);
  outlined init with copy of DOCFileOperation(a1, v8);
  v13 = specialized DOCOperationProgress.init(_:progressProvider:observing:)(v12, v8, a2, v2);
  outlined destroy of DOCFileOperation(a1);
  return v13;
}

_BYTE *specialized DOCOperationProgress.deinit()
{
  swift_beginAccess();
  v0[25] = 1;
  (*(*v0 + 168))(0);
  type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd);
  swift_dynamicCast();
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v7);
  v6 = v0;

  swift_dynamicCast();
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v4 + 40))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v7);
  outlined destroy of CharacterSet?(&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState], &_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMd);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*&v0[direct field offset for DOCOperationProgress.updateHandler]);
  outlined destroy of DOCFileOperation(&v6[*(*v6 + 312)]);
  outlined destroy of AnyHashable(&v6[*(*v6 + 320)]);

  __swift_destroy_boxed_opaque_existential_0(&v6[*(*v6 + 352)]);

  outlined destroy of CharacterSet?(&v6[*(*v6 + 384)], &_sypSgMd);

  return v0;
}

{
  swift_beginAccess();
  v0[25] = 1;
  (*(*v0 + 168))(0);
  type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd);
  swift_dynamicCast();
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v7);
  v6 = v0;

  swift_dynamicCast();
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v4 + 40))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v7);
  outlined destroy of CharacterSet?(&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState], &_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMd);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*&v0[direct field offset for DOCOperationProgress.updateHandler]);
  __swift_destroy_boxed_opaque_existential_0(&v6[*(*v6 + 312)]);
  outlined destroy of AnyHashable(&v6[*(*v6 + 320)]);

  __swift_destroy_boxed_opaque_existential_0(&v6[*(*v6 + 352)]);

  outlined destroy of CharacterSet?(&v6[*(*v6 + 384)], &_sypSgMd);

  return v0;
}

_BYTE *DOCOperationProgress.deinit()
{
  v1 = *v0;
  swift_beginAccess();
  v0[25] = 1;
  (*(*v0 + 168))(0);
  type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd);
  swift_dynamicCast();
  v2 = v9;
  v3 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v3 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v8);
  v7 = v0;

  swift_dynamicCast();
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v5 + 40))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0(v8);
  outlined destroy of CharacterSet?(&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState], &_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMd);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*&v0[direct field offset for DOCOperationProgress.updateHandler]);
  (*(*(*(v1 + 296) - 8) + 8))(&v7[*(*v7 + 312)]);
  outlined destroy of AnyHashable(&v7[*(*v7 + 320)]);

  __swift_destroy_boxed_opaque_existential_0(&v7[*(*v7 + 352)]);

  outlined destroy of CharacterSet?(&v7[*(*v7 + 384)], &_sypSgMd);

  return v0;
}

uint64_t DOCOperationProgress.updateHandler.getter()
{
  v1 = (v0 + direct field offset for DOCOperationProgress.updateHandler);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v1);
  return v2;
}

uint64_t DOCOperationProgress.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for DOCOperationProgress.updateHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

uint64_t DOCOperationProgress.operation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 312);
  swift_beginAccess();
  return (*(*(*(v3 + 296) - 8) + 16))(a1, v1 + v4);
}

uint64_t DOCOperationProgress.operation.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 312);
  swift_beginAccess();
  (*(*(*(v3 + 296) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t DOCOperationProgress.operationIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 320);
  swift_beginAccess();
  return outlined init with copy of AnyHashable(v1 + v3, a1);
}

uint64_t DOCOperationProgress.operationIdentifier.setter(uint64_t a1)
{
  v3 = *(*v1 + 320);
  swift_beginAccess();
  outlined assign with take of AnyHashable(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t DOCOperationProgress.progressValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(*v1 + 328);
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t DOCOperationProgress.progressValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + *(*v1 + 328);
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t DOCOperationProgress.state.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(*v1 + 336);
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t DOCOperationProgress.state.setter(char *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 336);
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t DOCOperationProgress.localizedOperationDescription.getter()
{
  v0 = specialized DOCOperationProgress.cachedLocalizedOperationDescription.getter();

  return v0;
}

uint64_t DOCOperationProgress.localizedProgressDescription.getter()
{
  v0 = specialized DOCOperationProgress.cachedLocalizedProgressDescription.getter();

  return v0;
}

id DOCOperationProgress.icon(size:scale:)(double a1, double a2, double a3)
{
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DOCProgressProvidingOperationIconType();
  MEMORY[0x28223BE20](v12, v13);
  v15 = (&v23[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DOCSidebarItemIconProvider(v3 + *(*v3 + 352), v23);
  v16 = v24;
  v17 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v17 + 32))(v16, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v8 + 32))(v11, v15, v7);
    isa = UTType._bridgeToObjectiveC()().super.isa;
    v20 = DOCProgressIconForUTType(isa, a1, a2, a3);

    (*(v8 + 8))(v11, v7);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v20 = DOCProgressIconForGenericDocument(a1, a2, a3);
    goto LABEL_7;
  }

  result = specialized static UIImage.doc_executablesFrameworkImage(named:)(*v15, v15[1]);
  if (result)
  {
    v20 = result;

LABEL_7:
    __swift_destroy_boxed_opaque_existential_0(v23);
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t DOCOperationProgress.debugID.getter()
{
  v1 = (v0 + *(*v0 + 344));
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t DOCOperationProgress.debugID.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + *(*v4 + 344));
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
}

uint64_t DOCOperationProgress.progress.getter()
{
  outlined init with copy of DOCSidebarItemIconProvider(v0 + *(*v0 + 352), v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 24))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

Swift::String __swiftcall DOCOperationProgress.description(includingProgressDetails:)(Swift::Bool includingProgressDetails)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v47 - v15;
  v17 = DOCOperationProgress.progress.getter();
  v18 = [v17 fileURL];

  if (v18)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 56))(v12, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  outlined init with take of URL?(v12, v16);
  if ((*(v5 + 48))(v16, 1, v4))
  {
    v19 = outlined destroy of CharacterSet?(v16, &_s10Foundation3URLVSgMd);
    v20 = 0xE500000000000000;
    v49 = 0x273F3F3F27;
  }

  else
  {
    (*(v5 + 16))(v8, v16, v4);
    outlined destroy of CharacterSet?(v16, &_s10Foundation3URLVSgMd);
    v49 = URL.lastPathComponent.getter();
    v20 = v21;
    v19 = (*(v5 + 8))(v8, v4);
  }

  (*(*v2 + 464))(&v50, v19);
  AnyHashable.description.getter();
  outlined destroy of AnyHashable(&v50);
  v48 = specialized Collection.prefix(_:)(6);
  v23 = v22;
  v25 = v24;
  v27 = v26;

  if (includingProgressDetails)
  {
    v50 = 32;
    v51 = 0xE100000000000000;
    v28 = DOCOperationProgress.progress.getter();
    v29 = [v28 description];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    MEMORY[0x24C1FAEA0](v30, v32);

    MEMORY[0x24C1FAEA0](59, 0xE100000000000000);
    v34 = v50;
    v33 = v51;
  }

  else
  {
    v34 = 0;
    v33 = 0xE000000000000000;
  }

  v50 = 0;
  v51 = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  v50 = 60;
  v51 = 0xE100000000000000;
  v35 = _typeName(_:qualified:)();
  MEMORY[0x24C1FAEA0](v35);

  v36 = MEMORY[0x24C1FAEA0](0x496775626564203ALL, 0xEC000000203D2044);
  v37 = (*(*v2 + 560))(v36);
  v38 = MEMORY[0x24C1FAE00](v37);
  v40 = v39;

  MEMORY[0x24C1FAEA0](v38, v40);

  MEMORY[0x24C1FAEA0](0x203D204449706F20, 0xE800000000000000);
  v41 = MEMORY[0x24C1FAE00](v48, v23, v25, v27);
  v43 = v42;

  MEMORY[0x24C1FAEA0](v41, v43);

  MEMORY[0x24C1FAEA0](0x3D20656C6966203BLL, 0xEA00000000002720);
  MEMORY[0x24C1FAEA0](v49, v20);

  MEMORY[0x24C1FAEA0](15143, 0xE200000000000000);
  MEMORY[0x24C1FAEA0](v34, v33);

  MEMORY[0x24C1FAEA0](62, 0xE100000000000000);
  v44 = v50;
  v45 = v51;
  result._object = v45;
  result._countAndFlagsBits = v44;
  return result;
}

DocumentManagerExecutables::DOCPacedPropertyUpdaterNotifyType __swiftcall DOCOperationProgress.updateProperties()()
{
  v1 = (*(*v0 + 680))(&v16);
  v2 = LOBYTE(v16);
  (*(*v0 + 512))(&v16, v1);
  if (v2 == 2)
  {
    if (LOBYTE(v16) == 2)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  if (v2 == 3)
  {
    if (LOBYTE(v16) != 3)
    {
      goto LABEL_8;
    }

LABEL_6:
    v3 = 0;
    goto LABEL_10;
  }

  if ((LOBYTE(v16) & 0xFE) == 2)
  {
LABEL_8:
    v3 = 1;
    goto LABEL_10;
  }

  v3 = LOBYTE(v16) ^ v2;
LABEL_10:
  v4 = DOCOperationProgress.progress.getter();
  v5 = [v4 isIndeterminate];
  if (v5)
  {

    v6 = 0.0;
  }

  else
  {
    [v4 fractionCompleted];
    v8 = v7;

    v9 = fmin(v8, 1.0);
    if (v9 < 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v9;
    }
  }

  (*(*v0 + 488))(&v16);
  if ((v5 & 1) == 0)
  {
    if ((v17 & 1) == 0)
    {
      v10 = v6 != v16;
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if ((v17 & 1) == 0)
  {
LABEL_19:
    v10 = 1;
    goto LABEL_21;
  }

  v10 = 0;
LABEL_21:
  v11 = *(*v0 + 336);
  swift_beginAccess();
  *(v0 + v11) = v2;
  v12 = v0 + *(*v0 + 328);
  swift_beginAccess();
  *v12 = v6;
  *(v12 + 8) = v5;
  v13 = *(*v0 + 368);
  swift_beginAccess();
  *(v0 + v13) = 0;
  v14 = *(*v0 + 376);
  swift_beginAccess();
  *(v0 + v14) = 0;
  return (v3 | v10) & 1;
}

void DOCOperationProgress.calculateState()(char *a1@<X8>)
{
  v3 = DOCOperationProgress.progress.getter();
  if ([v3 isCancelled])
  {

    v4 = 1;
  }

  else if (([v3 isFinished] & 1) != 0 || (objc_msgSend(v3, sel_fractionCompleted), v5 >= 1.0))
  {

    v4 = 0;
  }

  else
  {
    v6 = [v3 isPaused];

    if (v6)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }
  }

  if (*(v1 + *(*v1 + 392)))
  {
    v4 = 1;
  }

  *a1 = v4;
}

Swift::Void __swiftcall DOCOperationProgress.notifyClient()()
{
  v1 = (*(*v0 + 416))();
  if (v1)
  {
    v2 = v1;
    v1();

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v2);
  }
}

uint64_t DOCOperationProgress.progressPubSubObservance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 384);
  swift_beginAccess();
  return outlined init with copy of Any?(v1 + v3, a1);
}

uint64_t DOCOperationProgress.progressPubSubObservance.setter(uint64_t a1)
{
  v3 = *(*v1 + 384);
  swift_beginAccess();
  outlined assign with take of Any?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t DOCOperationProgress.kvoObservancesProgressState.setter(uint64_t a1)
{
  v3 = *(*v1 + 400);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCOperationProgress.kvoObservancesProgressValue.setter(uint64_t a1)
{
  v3 = *(*v1 + 408);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall DOCOperationProgress.installObservations()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v55 = &v53 - v5;
  v6 = type metadata accessor for URL();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 296);
  type metadata accessor for DOCOperationProgress();
  type metadata accessor for DOCWeakUncheckedSendable();
  v10 = specialized DOCWeakUncheckedSendable.__allocating_init(_:)();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in DOCOperationProgress.installObservations();
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in DOCOperationProgress.installObservations();
  *(v14 + 24) = v12;
  v59 = v14;
  aBlock[0] = *(v1 + *(*v1 + 360));
  v61 = 1;
  type metadata accessor for DOCOperationProgress.ObservedEvent();
  type metadata accessor for Array();
  swift_retain_n();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = Sequence<>.contains(_:)();
  aBlock[0] = *(v1 + *(*v1 + 360));
  v61 = 0;
  v16 = Sequence<>.contains(_:)();
  v58 = v15;
  if (v15)
  {
    v53 = v10;
    v17 = DOCOperationProgress.progress.getter();
    aBlock[0] = v17;
    swift_getKeyPath();
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #2 in DOCOperationProgress.installObservations();
    *(v18 + 24) = v13;

    _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v19 = *(*v0 + 408);
    v20 = swift_beginAccess();
    MEMORY[0x24C1FB090](v20);
    if (*((*(v0 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v21 = DOCOperationProgress.progress.getter();
    aBlock[0] = v21;
    swift_getKeyPath();
    v22 = swift_allocObject();
    *(v22 + 16) = partial apply for closure #3 in DOCOperationProgress.installObservations();
    *(v22 + 24) = v59;

    v23 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_249B9FA70;
    v25 = DOCOperationProgress.progress.getter();
    *(v24 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSProgress);
    *(v24 + 64) = lazy protocol witness table accessor for type NSProgress and conformance NSObject();
    *(v24 + 32) = v25;
    *(v24 + 96) = type metadata accessor for NSKeyValueObservation();
    *(v24 + 104) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type NSKeyValueObservation and conformance NSObject, MEMORY[0x277CC9100]);
    *(v24 + 72) = v23;
    v26 = v23;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    swift_beginAccess();
    v27 = v26;
    MEMORY[0x24C1FB090]();
    if (*((*(v1 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    v10 = v53;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_21;
  }

  v28 = DOCOperationProgress.progress.getter();
  aBlock[0] = v28;
  swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for closure #2 in DOCOperationProgress.installObservations();
  *(v29 + 24) = v13;

  _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v30 = *(*v1 + 400);
  v31 = swift_beginAccess();
  MEMORY[0x24C1FB090](v31);
  if (*((*(v1 + v30) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v30) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v32 = DOCOperationProgress.progress.getter();
  aBlock[0] = v32;
  swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for closure #2 in DOCOperationProgress.installObservations();
  *(v33 + 24) = v13;

  _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v34 = swift_beginAccess();
  MEMORY[0x24C1FB090](v34);
  if (*((*(v1 + v30) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v30) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if ((v58 & 1) == 0)
  {
    v35 = DOCOperationProgress.progress.getter();
    aBlock[0] = v35;
    swift_getKeyPath();
    v36 = swift_allocObject();
    *(v36 + 16) = partial apply for closure #2 in DOCOperationProgress.installObservations();
    *(v36 + 24) = v13;

    _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v37 = swift_beginAccess();
    MEMORY[0x24C1FB090](v37);
    if (*((*(v1 + v30) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v30) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  v38 = DOCOperationProgress.progress.getter();
  if ([v38 isCancelled] || objc_msgSend(v38, sel_isFinished))
  {

LABEL_21:

LABEL_22:

    return;
  }

  [v38 fractionCompleted];
  if (v39 >= 1.0)
  {

    goto LABEL_22;
  }

  [v38 isPaused];

  v40 = DOCOperationProgress.progress.getter();
  v41 = v55;
  NSProgress.publishedFileURL.getter(v55);

  v42 = v56;
  if ((*(v56 + 48))(v41, 1, v57) == 1)
  {

    outlined destroy of CharacterSet?(v41, &_s10Foundation3URLVSgMd);
  }

  else
  {
    v43 = v54;
    (*(v42 + 32))();
    v44 = v42;
    v45 = objc_opt_self();
    v46 = v43;
    URL._bridgeToObjectiveC()(v47);
    v49 = v48;
    v50 = swift_allocObject();
    *(v50 + 16) = partial apply for closure #9 in DOCOperationProgress.installObservations();
    *(v50 + 24) = v10;
    aBlock[4] = _sSo10NSProgressCIeg_SgIeghgo_ABIegh_SgIeghgo_TRTA_0;
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSProgress) -> (@owned (@escaping @callee_guaranteed @Sendable () -> ())?);
    aBlock[3] = &block_descriptor_60;
    v51 = _Block_copy(aBlock);

    v52 = [v45 addSubscriberForFileURL:v49 withPublishingHandler:v51];
    _Block_release(v51);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    DOCOperationProgress.progressPubSubObservance.setter(aBlock);

    (*(v44 + 8))(v46, v57);
  }
}

Swift::Void __swiftcall DOCOperationProgress.uninstallObservations()()
{
  v1 = v0;
  v2 = *(*v0 + 400);
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (i)
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x24C1FC540](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        dispatch thunk of NSKeyValueObservation.invalidate()();

        ++v5;
        if (v8 == i)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_12:

    DOCOperationProgress.kvoObservancesProgressState.setter(MEMORY[0x277D84F90]);
    v9 = *(*v1 + 408);
    swift_beginAccess();
    v3 = *(v1 + v9);
    v10 = v3 >> 62 ? __CocoaSet.count.getter() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v10)
    {
      break;
    }

    v11 = 0;
    v1 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FC540](v11, v3);
      }

      else
      {
        if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v12 = *(v3 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_249B9A480;
      *(v15 + 56) = type metadata accessor for NSKeyValueObservation();
      *(v15 + 64) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type NSKeyValueObservation and conformance NSObject, MEMORY[0x277CC9100]);
      *(v15 + 32) = v13;
      v16 = v13;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      dispatch thunk of NSKeyValueObservation.invalidate()();

      ++v11;
      if (v14 == v10)
      {
        goto LABEL_25;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_25:

  DOCOperationProgress.kvoObservancesProgressValue.setter(MEMORY[0x277D84F90]);
  DOCOperationProgress.progressPubSubObservance.getter(&v18);
  if (*(&v19 + 1))
  {
    outlined init with take of Any(&v18, &v20);
    v17 = objc_opt_self();
    __swift_project_boxed_opaque_existential_1(&v20, v21);
    [v17 removeSubscriber_];
    swift_unknownObjectRelease();
    v18 = 0u;
    v19 = 0u;
    DOCOperationProgress.progressPubSubObservance.setter(&v18);
    __swift_destroy_boxed_opaque_existential_0(&v20);
  }

  else
  {
    outlined destroy of CharacterSet?(&v18, &_sypSgMd);
  }
}

uint64_t DOCGenericOperationProgress.init(operation:observing:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v10[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v5, v4);
  outlined init with copy of DOCSidebarItemIconProvider(a1, v9);
  v7 = specialized DOCOperationProgress.init(_:progressProvider:observing:)(v10, v9, a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t DOCFileOperationProgress.__deallocating_deinit(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void *key path getter for DOCOperationProgress.updateHandler : <A>DOCOperationProgress<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  result = (*(**a1 + 416))();
  if (result)
  {
    v8 = result;
    v9 = v7;
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v8;
    result[4] = v9;
    v10 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCOperationProgress<A>) -> ();
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[1] = result;
  return result;
}

uint64_t key path setter for DOCOperationProgress.updateHandler : <A>DOCOperationProgress<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCBackdropConfiguration) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 424);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t key path setter for DOCOperationProgress.operation : <A>DOCOperationProgress<A>(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1, a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return DOCOperationProgress.operation.setter(v3);
}

Swift::Int DOCOperationProgress.ObservedEvent.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCOperationProgress<A>.ObservedEvent()
{
  Hasher.init(_seed:)();
  DOCOperationProgress.ObservedEvent.hash(into:)();
  return Hasher._finalize()();
}

uint64_t DOCOperationProgress.OperationWithProvider.init(operation:progressProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for DOCOperationProgress.OperationWithProvider() + 28);

  return outlined init with take of DOCDSCopyEngineConnection(a2, v6);
}

uint64_t static DOCOperationProgress._new(withOperation:progressProvider:observing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 296);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = type metadata accessor for DOCOperationProgress.OperationWithProvider();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v19[-v14 - 8];
  type metadata accessor for DOCOperationProgress();
  (*(v8 + 16))(v10, a1, v7);
  outlined init with copy of DOCSidebarItemIconProvider(a2, v19);
  DOCOperationProgress.OperationWithProvider.init(operation:progressProvider:)(v10, v19, v7, v15);

  v16 = specialized DOCOperationProgress.__allocating_init(operationWithProvider:observing:)(v15, a3);
  (*(v12 + 8))(v15, v11);
  return v16;
}

void *DOCOperationProgress.__allocating_init(_:progressProvider:observing:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  swift_allocObject();
  v8 = specialized DOCOperationProgress.init(_:progressProvider:observing:)(a1, a2, a3);
  (*(*(*(v4 + 296) - 8) + 8))(a1);
  return v8;
}

void closure #1 in DOCOperationProgress.cachedLocalizedOperationDescription.getter(uint64_t *a1@<X8>)
{
  v2 = DOCOperationProgress.progress.getter();
  v3 = [v2 localizedDescription];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in DOCOperationProgress.cachedLocalizedProgressDescription.getter(uint64_t *a1@<X8>)
{
  v2 = DOCOperationProgress.progress.getter();
  [v2 fractionCompleted];
  if (v3 <= 0.0)
  {
    v5 = [v2 fileOperationKind];
    v6 = specialized static DOCProgressUI.preparingToStartMessage(forOperation:)(v5);
    goto LABEL_5;
  }

  v4 = [v2 localizedAdditionalDescription];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_5:
    v8 = v6;
    v9 = v7;

    *a1 = v8;
    a1[1] = v9;
    return;
  }

  __break(1u);
}

void DOCOperationProgress.progressDidUnpublish.didset()
{
  if (*(v0 + 32) <= 0)
  {
    v4[0] = 0;
    v4[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(37);
    MEMORY[0x24C1FAEA0](0xD000000000000023, 0x8000000249BD88B0);
    type metadata accessor for DOCAbstractPacedPropertyUpdater(0);
    _print_unlocked<A, B>(_:_:)();

    v7 = v0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd);
    swift_dynamicCast();
    v1 = v5;
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v3 = (*(v2 + 16))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v4);
    if (v3)
    {
      DOCAbstractPacedPropertyUpdater.triggerNotifyClient(immediate:)(v3 == 2);
    }
  }
}

uint64_t closure #1 in DOCOperationProgress.installObservations()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a7;
  v14[3] = a6;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a4;
  v14[7] = a5;
  v14[8] = a3;

  v15 = a3;
  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #1 in DOCOperationProgress.installObservations()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = (*(*result + 96))(result);

    if (v12)
    {
      _StringGuts.grow(_:)(37);

      MEMORY[0x24C1FAEA0](a2, a3);
      v13 = MEMORY[0x24C1FAEA0](543584032, 0xE400000000000000);
      v14 = (*(*v12 + 560))(v13);
      v15 = MEMORY[0x24C1FAE00](v14);
      v17 = v16;

      MEMORY[0x24C1FAEA0](v15, v17);

      MEMORY[0x24C1FAEA0](0x6465676E61686320, 0xED0000203A6F7420);
      MEMORY[0x24C1FAEA0](a4, a5);

      if (([a6 isCancelled] & 1) != 0 || objc_msgSend(a6, sel_isFinished) || (objc_msgSend(a6, sel_fractionCompleted), v18 >= 1.0))
      {
        v19 = 1;
      }

      else
      {
        [a6 isPaused];
        v19 = 0;
      }

      DOCAbstractPacedPropertyUpdater.setNeedsUpdateProperties(notifyImmediately:)(v19);
    }
  }

  return result;
}

uint64_t closure #2 in DOCOperationProgress.installObservations()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24NSKeyValueObservedChangeVySbGMd);
  NSKeyValueObservedChange.oldValue.getter();
  result = NSKeyValueObservedChange.newValue.getter();
  if (v16 == 2)
  {
    if (v15 == 2)
    {
      return result;
    }
  }

  else if (v15 != 2 && ((v16 ^ v15) & 1) == 0)
  {
    return result;
  }

  NSKeyValueObservedChange.newValue.getter();
  v10 = 1702195828;
  if ((v14 & 1) == 0)
  {
    v10 = 0x65736C6166;
  }

  v11 = 0xE400000000000000;
  if ((v14 & 1) == 0)
  {
    v11 = 0xE500000000000000;
  }

  if (v14 == 2)
  {
    v12 = 0x2A6C696E2ALL;
  }

  else
  {
    v12 = v10;
  }

  if (v14 == 2)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = v11;
  }

  a5(a1, a2, a3, v12, v13);
}

uint64_t closure #3 in DOCOperationProgress.installObservations()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24NSKeyValueObservedChangeVySdGMd);
  NSKeyValueObservedChange.oldValue.getter();
  result = NSKeyValueObservedChange.newValue.getter();
  if (v16)
  {
    if (v14)
    {
      return result;
    }
  }

  else if ((v14 & 1) == 0 && v15 == v13)
  {
    return result;
  }

  NSKeyValueObservedChange.newValue.getter();
  if (v16)
  {
    v10 = 0xE500000000000000;
    v11 = 0x2A6C696E2ALL;
  }

  else
  {
    v11 = Double.description.getter();
    v10 = v12;
  }

  a5(a1, a2, a3, v11, v10);
}

uint64_t closure #1 in closure #9 in DOCOperationProgress.installObservations()(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = *(*(v1 + 80) + 296);
  *(v14 + 24) = v13;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #9 in DOCOperationProgress.installObservations();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_210;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v11, v6, v15);
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t closure #1 in closure #1 in closure #9 in DOCOperationProgress.installObservations()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 96))();

    if (v1)
    {
      *(v1 + *(*v1 + 392)) = 1;
      DOCOperationProgress.progressDidUnpublish.didset();
    }
  }

  return result;
}

uint64_t DOCOperationProgress.__ivar_destroyer()
{
  v1 = *v0;
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + direct field offset for DOCOperationProgress.updateHandler));
  (*(*(*(v1 + 296) - 8) + 8))(v0 + *(*v0 + 312));
  outlined destroy of AnyHashable(v0 + *(*v0 + 320));

  __swift_destroy_boxed_opaque_existential_0(v0 + *(*v0 + 352));

  outlined destroy of CharacterSet?(v0 + *(*v0 + 384), &_sypSgMd);
}

uint64_t DOCOperationProgress.__deallocating_deinit()
{
  DOCOperationProgress.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized DOCOperationProgress.init(_:progressProvider:observing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  v33 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = type metadata accessor for DOCFileOperation();
  v34[4] = &protocol witness table for DOCFileOperation;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  outlined init with take of DOCFileOperation(a2, boxed_opaque_existential_1);
  v12 = (a4 + direct field offset for DOCOperationProgress.updateHandler);
  *v12 = 0;
  v12[1] = 0;
  v13 = a4 + *(*a4 + 328);
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = *(*a4 + 336);
  *(a4 + v14) = 2;
  v15 = (a4 + *(*a4 + 344));
  UUID.init()();
  UUID.uuidString.getter();
  (*(v7 + 8))(v10, v6);
  v16 = specialized Collection.prefix(_:)(6);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  *v15 = v16;
  v15[1] = v18;
  v15[2] = v20;
  v15[3] = v22;
  v23 = a4 + *(*a4 + 368);
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0xE000000000000000;
  v24 = a4 + *(*a4 + 376);
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0xE000000000000000;
  v25 = (a4 + *(*a4 + 384));
  *v25 = 0u;
  v25[1] = 0u;
  *(a4 + *(*a4 + 392)) = 0;
  v26 = MEMORY[0x277D84F90];
  *(a4 + *(*a4 + 400)) = MEMORY[0x277D84F90];
  *(a4 + *(*a4 + 408)) = v26;
  v27 = v32;
  outlined init with copy of DOCFileOperation(v32, a4 + *(*a4 + 312));
  outlined init with copy of AnyHashable(boxed_opaque_existential_1, a4 + *(*a4 + 320));
  outlined init with copy of DOCSidebarItemIconProvider(v34, a4 + *(*a4 + 352));
  *(a4 + *(*a4 + 360)) = v33;
  swift_beginAccess();
  *(a4 + v14) = 2;
  swift_beginAccess();
  *v13 = 0;
  *(v13 + 8) = 1;
  *(a4 + 24) = 256;
  *(a4 + 32) = 0;
  v28 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState;
  v29 = type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(0);
  (*(*(v29 - 8) + 56))(a4 + v28, 1, 1, v29);
  *(a4 + 16) = 0x3FE0000000000000;
  DOCAbstractPacedPropertyUpdater.triggerUpdateProperties(notifyType:)(0);
  outlined destroy of DOCFileOperation(v27);
  __swift_destroy_boxed_opaque_existential_0(v34);
  return a4;
}

uint64_t specialized DOCOperationProgress.init(_:progressProvider:observing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v39 = a1;
  v40 = a3;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[3] = a5;
  v43[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  v15 = (a4 + direct field offset for DOCOperationProgress.updateHandler);
  *v15 = 0;
  v15[1] = 0;
  v16 = a4 + *(*a4 + 328);
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = *(*a4 + 336);
  *(a4 + v17) = 2;
  v18 = (a4 + *(*a4 + 344));
  UUID.init()();
  UUID.uuidString.getter();
  (*(v11 + 8))(v14, v10);
  v19 = specialized Collection.prefix(_:)(6);
  v21 = v20;
  v23 = v22;
  v25 = v24;

  *v18 = v19;
  v18[1] = v21;
  v18[2] = v23;
  v18[3] = v25;
  v26 = a4 + *(*a4 + 368);
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0xE000000000000000;
  v27 = a4 + *(*a4 + 376);
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0xE000000000000000;
  v28 = (a4 + *(*a4 + 384));
  *v28 = 0u;
  v28[1] = 0u;
  *(a4 + *(*a4 + 392)) = 0;
  v29 = MEMORY[0x277D84F90];
  *(a4 + *(*a4 + 400)) = MEMORY[0x277D84F90];
  *(a4 + *(*a4 + 408)) = v29;
  v30 = v39;
  outlined init with copy of DOCFileOperation(v39, a4 + *(*a4 + 312));
  (*(v38 + 8))(v41, a5);
  v31 = a4 + *(*a4 + 320);
  v32 = v41[1];
  *v31 = v41[0];
  *(v31 + 16) = v32;
  *(v31 + 32) = v42;
  outlined init with copy of DOCSidebarItemIconProvider(v43, a4 + *(*a4 + 352));
  *(a4 + *(*a4 + 360)) = v40;
  swift_beginAccess();
  *(a4 + v17) = 2;
  swift_beginAccess();
  *v16 = 0;
  *(v16 + 8) = 1;
  *(a4 + 24) = 256;
  *(a4 + 32) = 0;
  v33 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState;
  v34 = type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(0);
  (*(*(v34 - 8) + 56))(a4 + v33, 1, 1, v34);
  *(a4 + 16) = 0x3FE0000000000000;
  DOCAbstractPacedPropertyUpdater.triggerUpdateProperties(notifyType:)(0);
  outlined destroy of DOCFileOperation(v30);
  __swift_destroy_boxed_opaque_existential_0(v43);
  return a4;
}

void *specialized DOCOperationProgress.init(_:progressProvider:observing:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v35 = a1;
  v36 = a3;
  v34 = *v3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v4 + direct field offset for DOCOperationProgress.updateHandler);
  *v11 = 0;
  v11[1] = 0;
  v12 = v4 + *(*v4 + 328);
  *v12 = 0;
  v12[8] = 1;
  v13 = *(*v4 + 336);
  *(v4 + v13) = 2;
  v14 = (v4 + *(*v4 + 344));
  UUID.init()();
  UUID.uuidString.getter();
  (*(v7 + 8))(v10, v6);
  v15 = specialized Collection.prefix(_:)(6);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  *v14 = v15;
  v14[1] = v17;
  v14[2] = v19;
  v14[3] = v21;
  v22 = v4 + *(*v4 + 368);
  *v22 = 0;
  *(v22 + 1) = 0;
  *(v22 + 2) = 0xE000000000000000;
  v23 = v4 + *(*v4 + 376);
  *v23 = 0;
  *(v23 + 1) = 0;
  *(v23 + 2) = 0xE000000000000000;
  v24 = (v4 + *(*v4 + 384));
  *v24 = 0u;
  v24[1] = 0u;
  *(v4 + *(*v4 + 392)) = 0;
  v25 = MEMORY[0x277D84F90];
  *(v4 + *(*v4 + 400)) = MEMORY[0x277D84F90];
  *(v4 + *(*v4 + 408)) = v25;
  (*(*(*(v34 + 296) - 8) + 16))(v4 + *(*v4 + 312), v35);
  v26 = a2[3];
  v27 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v26);
  (*(v27 + 8))(v37, v26, v27);
  v28 = v4 + *(*v4 + 320);
  v29 = v37[1];
  *v28 = v37[0];
  *(v28 + 1) = v29;
  *(v28 + 4) = v38;
  outlined init with copy of DOCSidebarItemIconProvider(a2, v4 + *(*v4 + 352));
  *(v4 + *(*v4 + 360)) = v36;
  swift_beginAccess();
  *(v4 + v13) = 2;
  swift_beginAccess();
  *v12 = 0;
  v12[8] = 1;
  *(v4 + 12) = 256;
  v4[4] = 0;
  v30 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState;
  v31 = type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(0);
  (*(*(v31 - 8) + 56))(v4 + v30, 1, 1, v31);
  v4[2] = 0x3FE0000000000000;
  DOCAbstractPacedPropertyUpdater.triggerUpdateProperties(notifyType:)(0);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v4;
}

uint64_t specialized DOCOperationProgress.cachedLocalizedOperationDescription.getter()
{
  v1 = v0 + *(*v0 + 368);
  swift_beginAccess();
  if ((*v1 & 1) == 0)
  {
    closure #1 in DOCOperationProgress.cachedLocalizedOperationDescription.getter(v5);
    v2 = v5[1];
    *(v1 + 8) = v5[0];
    *(v1 + 16) = v2;

    *v1 = 1;
  }

  v3 = *(v1 + 8);
  swift_endAccess();
  return v3;
}

uint64_t specialized DOCOperationProgress.cachedLocalizedProgressDescription.getter()
{
  v1 = v0 + *(*v0 + 376);
  swift_beginAccess();
  if ((*v1 & 1) == 0)
  {
    closure #1 in DOCOperationProgress.cachedLocalizedProgressDescription.getter(v5);
    v2 = v5[1];
    *(v1 + 8) = v5[0];
    *(v1 + 16) = v2;

    *v1 = 1;
  }

  v3 = *(v1 + 8);
  swift_endAccess();
  return v3;
}

uint64_t specialized DOCOperationProgress.__allocating_init(operationWithProvider:observing:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 296);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v9 + 16))(v8, a1, v5, v6);
  v10 = type metadata accessor for DOCOperationProgress.OperationWithProvider();
  outlined init with copy of DOCSidebarItemIconProvider(a1 + *(v10 + 28), v13);
  return (*(v2 + 640))(v8, v13, a2);
}

unint64_t lazy protocol witness table accessor for type DOCProgressValue and conformance DOCProgressValue()
{
  result = lazy protocol witness table cache variable for type DOCProgressValue and conformance DOCProgressValue;
  if (!lazy protocol witness table cache variable for type DOCProgressValue and conformance DOCProgressValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCProgressValue and conformance DOCProgressValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCProgressState and conformance DOCProgressState()
{
  result = lazy protocol witness table cache variable for type DOCProgressState and conformance DOCProgressState;
  if (!lazy protocol witness table cache variable for type DOCProgressState and conformance DOCProgressState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCProgressState and conformance DOCProgressState);
  }

  return result;
}

uint64_t type metadata completion function for DOCOperationProgress()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

unint64_t type metadata completion function for DOCOperationProgress.OperationWithProvider()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DOCProgressProvidingOperation();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCOperationProgress.OperationWithProvider(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for DOCOperationProgress.OperationWithProvider(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

unint64_t type metadata accessor for DOCProgressProvidingOperation()
{
  result = lazy cache variable for type metadata for DOCProgressProvidingOperation;
  if (!lazy cache variable for type metadata for DOCProgressProvidingOperation)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DOCProgressProvidingOperation);
  }

  return result;
}

uint64_t type metadata completion function for CachedValue()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CachedValue(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for CachedValue(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t UITraitCollection.doc_browserLayoutConfiguration.getter()
{
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();
  return v1;
}

objc_class *DOCBrowserLayoutConfiguration.SizeSetting.localizedName.getter(char a1)
{
  result = _DocumentManagerBundle();
  v3 = result;
  if (!a1)
  {
    if (result)
    {
      v4 = "ist Size's 'Custom' Setting";
      v15 = 0x8000000249BDE4A0;
      v5 = 0x617A696C61636F4CLL;
      v6 = 0xEB00000000656C62;
      v7 = 0x6361706D6F43;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (a1 == 1)
  {
    if (result)
    {
      v4 = "ist Size's 'Compact' Setting";
      v15 = 0x8000000249BDE4F0;
      v5 = 0x617A696C61636F4CLL;
      v6 = 0xEB00000000656C62;
      v7 = 0x6C7561666544;
LABEL_7:
      v8 = v7 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
      v9 = v4 | 0x8000000000000000;
      v10 = 0xD00000000000002CLL;
      v11 = 0xD000000000000016;
      v12.super.isa = v3;
      v13 = 0xE700000000000000;
LABEL_10:
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, *&v5, v12, *&v8, *(&v15 - 1))._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result)
  {
    v11 = 0xD000000000000015;
    v15 = 0x8000000249BDE450;
    v5 = 0x617A696C61636F4CLL;
    v6 = 0xEB00000000656C62;
    v8 = 0x6D6F74737543;
    v9 = 0x8000000249BDE430;
    v10 = 0xD00000000000002BLL;
    v12.super.isa = v3;
    v13 = 0xE600000000000000;
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t static DOCBrowserLayoutConfiguration.nextSizeSliderValue(sizeSliderValue:direction:)(uint64_t a1, _BYTE *a2)
{
  v2 = -4;
  if (!*a2)
  {
    v2 = 4;
  }

  v3 = __OFADD__(a1, v2);
  result = a1 + v2;
  if (v3)
  {
    __break(1u);
  }

  return result;
}

DocumentManagerExecutables::DOCBrowserLayoutConfiguration::SizeSetting_optional __swiftcall DOCBrowserLayoutConfiguration.SizeSetting.nextSizeSetting(direction:)(DocumentManagerExecutables::DOCAdjustmentDirection direction)
{
  v2 = *direction;
  result.value = DocumentManagerExecutables_DOCBrowserLayoutConfiguration_SizeSetting_unknownDefault;
  if (v1)
  {
    if (v1 != 1)
    {
      return result;
    }

    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v2)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v5)
  {
    v6.value = DocumentManagerExecutables_DOCBrowserLayoutConfiguration_SizeSetting_unknownDefault;
  }

  else
  {
    v6.value = DocumentManagerExecutables_DOCBrowserLayoutConfiguration_SizeSetting_regular;
  }

  if (v5 == -1)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

DocumentManagerExecutables::DOCBrowserLayoutConfiguration::SizeSetting_optional __swiftcall DOCBrowserLayoutConfiguration.SizeSetting.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 1) >= 4)
  {
    return 3;
  }

  else
  {
    return (0x2030100u >> (8 * (rawValue + 1)));
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCBrowserLayoutConfiguration.SizeSetting()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](qword_249BAA640[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCBrowserLayoutConfiguration.SizeSetting()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](qword_249BAA640[v1]);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance DOCBrowserLayoutConfiguration.SizeSetting@<X0>(void *result@<X0>, char *a2@<X8>)
{
  v2 = *result + 1;
  if (v2 >= 4)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0x2030100u >> (8 * v2);
  }

  *a2 = v3;
  return result;
}

BOOL static DOCBrowserLayoutConfiguration.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  return qword_249BAA640[a2] == qword_249BAA640[a5] && a3 == a6;
}

uint64_t DOCBrowserLayoutConfiguration.hash(into:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  MEMORY[0x24C1FCBD0](a2);
  MEMORY[0x24C1FCBD0](qword_249BAA640[a3]);
  return MEMORY[0x24C1FCBD0](a4);
}

Swift::Int DOCBrowserLayoutConfiguration.hashValue.getter(uint64_t a1, char a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  MEMORY[0x24C1FCBD0](qword_249BAA640[a2]);
  MEMORY[0x24C1FCBD0](a3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCBrowserLayoutConfiguration(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return qword_249BAA640[*(a1 + 8)] == qword_249BAA640[*(a2 + 8)] && *(a1 + 16) == *(a2 + 16);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCBrowserLayoutConfiguration()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  MEMORY[0x24C1FCBD0](qword_249BAA640[v2]);
  MEMORY[0x24C1FCBD0](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCBrowserLayoutConfiguration()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x24C1FCBD0](*v0);
  MEMORY[0x24C1FCBD0](qword_249BAA640[v1]);
  return MEMORY[0x24C1FCBD0](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCBrowserLayoutConfiguration()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  MEMORY[0x24C1FCBD0](qword_249BAA640[v2]);
  MEMORY[0x24C1FCBD0](v3);
  return Hasher._finalize()();
}

uint64_t static DOCBrowserLayoutConfiguration.Trait.name.getter()
{
  swift_beginAccess();
  v0 = static DOCBrowserLayoutConfiguration.Trait.name;

  return v0;
}

uint64_t static DOCBrowserLayoutConfiguration.Trait.name.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static DOCBrowserLayoutConfiguration.Trait.name = a1;
  off_27EEEAC78 = a2;
}

uint64_t key path setter for static DOCBrowserLayoutConfiguration.Trait.name : DOCBrowserLayoutConfiguration.Trait.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static DOCBrowserLayoutConfiguration.Trait.name = v2;
  off_27EEEAC78 = v1;
}

uint64_t static DOCBrowserLayoutConfiguration.Trait.defaultValue.setter(uint64_t a1, char a2, uint64_t a3)
{
  result = swift_beginAccess();
  static DOCBrowserLayoutConfiguration.Trait.defaultValue = a1;
  byte_27EEEAC88 = a2;
  qword_27EEEAC90 = a3;
  return result;
}

uint64_t protocol witness for static UITraitDefinition.defaultValue.getter in conformance DOCBrowserLayoutConfiguration.Trait@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v3 = byte_27EEEAC88;
  v4 = qword_27EEEAC90;
  *a1 = static DOCBrowserLayoutConfiguration.Trait.defaultValue;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t protocol witness for static UITraitDefinition.name.getter in conformance DOCBrowserLayoutConfiguration.Trait()
{
  swift_beginAccess();
  v0 = static DOCBrowserLayoutConfiguration.Trait.name;

  return v0;
}

uint64_t UIMutableTraits.doc_browserLayoutConfiguration.getter()
{
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  dispatch thunk of UIMutableTraits.subscript.getter();
  return v1;
}

void (*UIMutableTraits.doc_browserLayoutConfiguration.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[7] = a3;
  v7[8] = v3;
  v7[6] = a2;
  v7[3] = UIMutableTraits.doc_browserLayoutConfiguration.getter();
  v8 += 3;
  *(v8 + 8) = v9;
  v8[2] = v10;
  return UIMutableTraits.doc_browserLayoutConfiguration.modify;
}

void UIMutableTraits.doc_browserLayoutConfiguration.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  *v1 = *(*a1 + 24);
  v1[8] = v2;
  *(v1 + 2) = v3;
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  dispatch thunk of UIMutableTraits.subscript.setter();

  free(v1);
}

void protocol witness for static EnvironmentKey.defaultValue.getter in conformance BrowserConfigurationKey(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 42;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance BrowserConfigurationKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration and conformance DOCBrowserLayoutConfiguration();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.browserConfiguration.getter()
{
  lazy protocol witness table accessor for type BrowserConfigurationKey and conformance BrowserConfigurationKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

void (*EnvironmentValues.browserConfiguration.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = lazy protocol witness table accessor for type BrowserConfigurationKey and conformance BrowserConfigurationKey();
  EnvironmentValues.subscript.getter();
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  *v4 = *(v4 + 24);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  return EnvironmentValues.browserConfiguration.modify;
}

void EnvironmentValues.browserConfiguration.modify(void **a1)
{
  v2 = *(*a1 + 8);
  v3 = (*a1)[2];
  v1 = *a1;
  *(v1 + 3) = **a1;
  v1[32] = v2;
  *(v1 + 5) = v3;
  EnvironmentValues.subscript.setter();

  free(v1);
}

uint64_t static BrowserConfigurationKey.read(from:)()
{
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();
  return v1;
}

uint64_t static BrowserConfigurationKey.write(to:value:)(uint64_t a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

uint64_t protocol witness for static UITraitBridgedEnvironmentKey.read(from:) in conformance BrowserConfigurationKey@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  result = UITraitCollection.subscript.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t DOCBrowserLayoutConfiguration.SizeSetting.accessibilityIdentifierComponent.getter(char a1)
{
  if (!a1)
  {
    return 0x746361706D6F63;
  }

  if (a1 == 1)
  {
    return 0x72616C75676572;
  }

  return 0x6D6F74737563;
}

unint64_t lazy protocol witness table accessor for type BrowserConfigurationKey and conformance BrowserConfigurationKey()
{
  result = lazy protocol witness table cache variable for type BrowserConfigurationKey and conformance BrowserConfigurationKey;
  if (!lazy protocol witness table cache variable for type BrowserConfigurationKey and conformance BrowserConfigurationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BrowserConfigurationKey and conformance BrowserConfigurationKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BrowserConfigurationKey and conformance BrowserConfigurationKey;
  if (!lazy protocol witness table cache variable for type BrowserConfigurationKey and conformance BrowserConfigurationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BrowserConfigurationKey and conformance BrowserConfigurationKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration and conformance DOCBrowserLayoutConfiguration()
{
  result = lazy protocol witness table cache variable for type DOCBrowserLayoutConfiguration and conformance DOCBrowserLayoutConfiguration;
  if (!lazy protocol witness table cache variable for type DOCBrowserLayoutConfiguration and conformance DOCBrowserLayoutConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCBrowserLayoutConfiguration and conformance DOCBrowserLayoutConfiguration);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCBrowserLayoutConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 24))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCBrowserLayoutConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t DateCalculator.__allocating_init(date:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_cache;
  *(v2 + v3) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables10FormattersO_AC10DateResultVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_date;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2 + v4, a1, v5);
  v7 = [objc_opt_self() defaultCenter];
  [v7 addObserver:v2 selector:sel_clearCache name:*MEMORY[0x277D766F0] object:0];

  (*(v6 + 8))(a1, v5);
  return v2;
}

id one-time initialization function for mediumNonToday()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDoesRelativeDateFormatting_];
  [v0 setTimeStyle_];
  result = [v0 setDateStyle_];
  static FormatterCache.mediumNonToday = v0;
  return result;
}

id one-time initialization function for shortToday(uint64_t a1, SEL *a2, uint64_t a3, SEL *a4, void *a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v9 setDoesRelativeDateFormatting_];
  [v9 *a2];
  result = [v9 *a4];
  *a5 = v9;
  return result;
}

uint64_t Formatters.string(for:)(uint64_t a1, unsigned __int8 a2)
{
  v3 = type metadata accessor for Calendar();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v8 = Calendar.isDateInToday(_:)();
  (*(v4 + 8))(v7, v3);
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (v8)
      {
        if (one-time initialization token for mediumToday != -1)
        {
          swift_once();
        }

        v9 = &static FormatterCache.mediumToday;
      }

      else
      {
        if (one-time initialization token for mediumNonToday != -1)
        {
          swift_once();
        }

        v9 = &static FormatterCache.mediumNonToday;
      }
    }

    else if (v8)
    {
      if (one-time initialization token for shortToday != -1)
      {
        swift_once();
      }

      v9 = &static FormatterCache.shortToday;
    }

    else
    {
      if (one-time initialization token for shortNonToday != -1)
      {
        swift_once();
      }

      v9 = &static FormatterCache.shortNonToday;
    }
  }

  else if (a2)
  {
    if (v8)
    {
      if (one-time initialization token for longToday != -1)
      {
        swift_once();
      }

      v9 = &static FormatterCache.longToday;
    }

    else
    {
      if (one-time initialization token for longNonToday != -1)
      {
        swift_once();
      }

      v9 = &static FormatterCache.longNonToday;
    }
  }

  else if (v8)
  {
    if (one-time initialization token for fullToday != -1)
    {
      swift_once();
    }

    v9 = &static FormatterCache.fullToday;
  }

  else
  {
    if (one-time initialization token for fullNonToday != -1)
    {
      swift_once();
    }

    v9 = &static FormatterCache.fullNonToday;
  }

  v10 = *v9;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v12 = [v10 stringFromDate_];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v13;
}

Swift::Int Formatters.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

uint64_t DateCache.dateToDateCalculatorCache.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t DateCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DateCache.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_26DocumentManagerExecutables0D10CalculatorCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t DateCalculator.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_date;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DateCalculator.cache.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_cache;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DateCalculator.init(date:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_cache;
  *(v1 + v3) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables10FormattersO_AC10DateResultVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_date;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1 + v4, a1, v5);
  v7 = [objc_opt_self() defaultCenter];
  [v7 addObserver:v1 selector:sel_clearCache name:*MEMORY[0x277D766F0] object:0];

  (*(v6 + 8))(a1, v5);
  return v1;
}

Swift::Void __swiftcall DateCalculator.clearCache()()
{
  v1 = (*(*v0 + 112))(v4);
  v3 = v2;

  *v3 = MEMORY[0x277D84F98];
  v1(v4, 0);
}

uint64_t DateCalculator.bestFormatter(targetSize:)(double a1)
{
  v2 = v1;
  v4 = 0;
  while (1)
  {
    v5 = outlined read-only object #0 of DateCalculator.bestFormatter(targetSize:)[v4 + 32];
    v6 = (*(*v2 + 96))();
    if (*(v6 + 16))
    {
      v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        v9 = (*(v6 + 56) + 32 * v7);
        v10 = *v9;
        v11 = v9[1];

        if (v11 < a1)
        {
          return v10;
        }
      }
    }

    v12 = (*(*v2 + 144))(v5);
    v14 = v13;
    v15 = v12;
    v17 = v16;
    v18 = *(*v2 + 112);
    swift_bridgeObjectRetain_n();
    v10 = v18(v39);
    v20 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    v38 = *v20;
    *v20 = 0x8000000000000000;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
    v25 = v22[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (v22[3] < v28)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_23;
      }

LABEL_10:
      v31 = v38;
      if ((v29 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v33 = v23;
    specialized _NativeDictionary.copy()();
    v23 = v33;
    v31 = v38;
    if ((v29 & 1) == 0)
    {
LABEL_13:
      v31[(v23 >> 6) + 8] |= 1 << v23;
      *(v31[6] + v23) = v5;
      v34 = v31[7] + 32 * v23;
      *v34 = v5;
      *(v34 + 8) = v14;
      *(v34 + 16) = v15;
      *(v34 + 24) = v17;
      v35 = v31[2];
      v27 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v27)
      {
        goto LABEL_22;
      }

      v31[2] = v36;
      goto LABEL_15;
    }

LABEL_11:
    v32 = v31[7] + 32 * v23;
    *v32 = v5;
    *(v32 + 8) = v14;
    *(v32 + 16) = v15;
    *(v32 + 24) = v17;

LABEL_15:
    *v20 = v31;

    (v10)(v39, 0);

    if (v14 < a1 || v5 == 3)
    {
      return v5;
    }

    ++v4;

    if (v4 == 4)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return v10;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t one-time initialization function for sizingView()
{
  v0 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for DateView(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);
  v13 = &v7[*(v12 + 48)];
  v14 = *(v12 + 64);
  Date.init()();
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v7[v14] = xmmword_249BAA660;
  swift_storeEnumTagMultiPayload();
  v15 = &v11[*(v8 + 24)];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  outlined init with copy of Column(v7, v3);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of Column(v3);
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
    v18 = &v3[*(v12 + 48)];
    v19 = *v18;
    v20 = *(v18 + 1);
    outlined consume of ColumnType(*&v3[*(v12 + 64)], *&v3[*(v12 + 64) + 8]);
    v21 = type metadata accessor for Date();
    (*(*(v21 - 8) + 8))(v3, v21);
    if (v20)
    {
      v16 = v19;
    }

    else
    {
      v16 = 0;
    }

    v17 = 0xE000000000000000;
    if (v20)
    {
      v17 = v20;
    }
  }

  v22 = &v11[*(v8 + 20)];
  *v22 = v16;
  *(v22 + 1) = v17;
  outlined init with take of Column(v7, v11);
  v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables04DateD0VGMd));
  result = _UIHostingView.init(rootView:)();
  static DateCalculator.sizingView = result;
  return result;
}

uint64_t *DateCalculator.sizingView.unsafeMutableAddressor()
{
  if (one-time initialization token for sizingView != -1)
  {
    swift_once();
  }

  return &static DateCalculator.sizingView;
}

id static DateCalculator.sizingView.getter()
{
  if (one-time initialization token for sizingView != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static DateCalculator.sizingView;

  return v0;
}

void static DateCalculator.sizingView.setter(uint64_t a1)
{
  if (one-time initialization token for sizingView != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DateCalculator.sizingView;
  static DateCalculator.sizingView = a1;
}

uint64_t (*static DateCalculator.sizingView.modify())()
{
  if (one-time initialization token for sizingView != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

id key path getter for static DateCalculator.sizingView : DateCalculator.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for sizingView != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DateCalculator.sizingView;
  *a1 = static DateCalculator.sizingView;

  return v2;
}

void key path setter for static DateCalculator.sizingView : DateCalculator.Type(id *a1)
{
  v1 = one-time initialization token for sizingView;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static DateCalculator.sizingView;
  static DateCalculator.sizingView = v2;
}

uint64_t DateCalculator.size(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v53 - v10;
  v60 = type metadata accessor for DateView(0);
  v13 = MEMORY[0x28223BE20](v60, v12);
  v59 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(*v1 + 96))(v13);
  if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 32 * v16 + 16);
  }

  else
  {
    v53 = v7;
    v56 = v4;

    v19 = *(*v2 + 152);
    v57 = a1;
    v58 = v19(a1);
    v54 = v20;
    if (one-time initialization token for sizingView != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v55 = static DateCalculator.sizingView;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);
    v22 = &v11[*(v21 + 48)];
    v23 = *(v21 + 64);
    v24 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_date;
    v25 = type metadata accessor for Date();
    v26 = *(v25 - 8);
    (*(v26 + 16))(v11, v2 + v24, v25);
    v27 = v58;
    v28 = v54;
    *v22 = v58;
    v22[1] = v28;
    *&v11[v23] = xmmword_249BAA660;
    swift_storeEnumTagMultiPayload();
    v29 = &v59[*(v60 + 24)];
    *v29 = swift_getKeyPath();
    v29[8] = 0;
    v30 = v53;
    outlined init with copy of Column(v11, v53);
    v31 = v28;
    if (swift_getEnumCaseMultiPayload())
    {
      v18 = v27;
      v32 = v55;
      v33 = v55;

      outlined destroy of Column(v30);
      v34 = 0;
      v35 = 0xE000000000000000;
    }

    else
    {
      v36 = (v30 + *(v21 + 48));
      v37 = v36[1];
      v56 = *v36;
      v38 = (v30 + *(v21 + 64));
      v39 = v30;
      v40 = *v38;
      v41 = v38[1];
      v32 = v55;
      v42 = v55;

      outlined consume of ColumnType(v40, v41);
      (*(v26 + 8))(v39, v25);
      v34 = v56;
      if (!v37)
      {
        v34 = 0;
      }

      v35 = 0xE000000000000000;
      if (v37)
      {
        v35 = v37;
      }

      v18 = v58;
    }

    v43 = v59;
    v44 = &v59[*(v60 + 20)];
    *v44 = v34;
    *(v44 + 1) = v35;
    outlined init with take of Column(v11, v43);
    dispatch thunk of _UIHostingView.rootView.setter();

    [static DateCalculator.sizingView _layoutSizeThatFits_fixedAxes_];
    v46 = v45;
    v47 = *(*v2 + 112);

    v48 = v47(v62);
    v50 = v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *v50;
    *v50 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, v18, v31, v57, isUniquelyReferenced_nonNull_native, v46);
    *v50 = v61;
    v48(v62, 0);
  }

  return v18;
}

Swift::String __swiftcall DateCalculator.string(for:)(DocumentManagerExecutables::Formatters a1)
{
  v2 = v1;
  v3 = a1;
  v4 = (*(*v1 + 96))();
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 32 * v5;
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
  }

  else
  {

    v8 = Formatters.string(for:)(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_date, v3);
    v9 = v10;
    v11 = *(*v2 + 112);

    v12 = v11(v20);
    v14 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v14;
    *v14 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v8, v9, v3, isUniquelyReferenced_nonNull_native, 10000.0);
    *v14 = v19;
    v12(v20, 0);
  }

  v16 = v8;
  v17 = v9;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

uint64_t DateCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_date;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DateCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_date;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t outlined init with take of Column(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Column(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Formatters and conformance Formatters()
{
  result = lazy protocol witness table cache variable for type Formatters and conformance Formatters;
  if (!lazy protocol witness table cache variable for type Formatters and conformance Formatters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Formatters and conformance Formatters);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Formatters] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Formatters] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Formatters] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables10FormattersOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Formatters] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DateResult(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DateResult(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for DateCalculator()
{
  result = type metadata singleton initialization cache for DateCalculator;
  if (!type metadata singleton initialization cache for DateCalculator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DateCalculator()
{
  result = type metadata accessor for Date();
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

uint64_t static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = a8;
  v17[7] = a9;
  v17[8] = a5;
  v17[9] = a6;
  v17[10] = a7;

  v18 = a7;
  DOCRunInMainThread(_:)();
}

void closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a2)
  {
    v14 = MEMORY[0x24C1FAD20]();
  }

  else
  {
    v14 = 0;
  }

  v15 = MEMORY[0x24C1FAD20](a3, a4);
  v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v53 = partial apply for closure #1 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:);
  v54 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v52 = &block_descriptor_61;
  v18 = _Block_copy(&aBlock);
  v19 = v16;

  [v19 addTextFieldWithConfigurationHandler_];
  _Block_release(v18);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = (v20 + 16);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = a5;
  v22[4] = a6;
  v23 = swift_allocObject();
  v23[2] = partial apply for closure #2 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:);
  v23[3] = v22;
  v23[4] = v17;

  v24 = MEMORY[0x24C1FAD20](a7, a8);
  v53 = partial apply for closure #3 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:);
  v54 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v52 = &block_descriptor_15_1;
  v25 = _Block_copy(&aBlock);

  v48 = objc_opt_self();
  v26 = [v48 actionWithTitle:v24 style:0 handler:v25];
  _Block_release(v25);

  [v26 setEnabled_];
  v27 = [objc_opt_self() defaultCenter];
  v28 = *MEMORY[0x277D770B0];
  swift_beginAccess();
  v29 = *(v17 + 16);
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 mainQueue];
  v33 = swift_allocObject();
  *(v33 + 16) = v26;
  v53 = partial apply for closure #4 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:);
  v54 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v52 = &block_descriptor_21_1;
  v34 = _Block_copy(&aBlock);
  v35 = v26;

  v36 = [v27 addObserverForName:v28 object:v31 queue:v32 usingBlock:v34];
  _Block_release(v34);

  swift_beginAccess();
  *v21 = v36;
  swift_unknownObjectRelease();
  v37 = _DocumentManagerBundle();
  if (v37)
  {
    v38 = v37;
    v55._object = 0xE600000000000000;
    v39.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v39.value._object = 0xEB00000000656C62;
    v40._countAndFlagsBits = 0x6C65636E6143;
    v40._object = 0xE600000000000000;
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v55._countAndFlagsBits = 0x6C65636E6143;
    v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v39, v38, v41, v55);

    v43 = swift_allocObject();
    *(v43 + 16) = partial apply for closure #2 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:);
    *(v43 + 24) = v22;

    v44 = MEMORY[0x24C1FAD20](v42._countAndFlagsBits, v42._object);

    v53 = partial apply for closure #5 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:);
    v54 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v50 = 1107296256;
    v51 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v52 = &block_descriptor_27_2;
    v45 = _Block_copy(&aBlock);

    v46 = [v48 actionWithTitle:v44 style:1 handler:v45];
    _Block_release(v45);

    [v19 addAction_];
    [v19 addAction_];
    [v19 setPreferredAction_];

    [a9 presentViewController:v19 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

id closure #1 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:)(void *a1, uint64_t a2)
{
  [a1 setSecureTextEntry_];
  swift_beginAccess();
  v3 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

uint64_t closure #2 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  if (v10)
  {
    v11 = objc_opt_self();
    swift_unknownObjectRetain();
    v12 = [v11 defaultCenter];
    [v12 removeObserver_];
    swift_unknownObjectRelease();
  }

  return a5(a1, a2, a3);
}

id closure #3 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = *(a4 + 16);
  if (result)
  {
    result = [result text];
    if (result)
    {
      v7 = result;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      a2(v8, v10, 0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id closure #4 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:)(uint64_t a1, void *a2)
{
  Notification.object.getter();
  if (!v13)
  {
    outlined destroy of Any?(v12);
    goto LABEL_9;
  }

  type metadata accessor for UITextField();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v9 = 0;
    return [a2 setEnabled_];
  }

  v3 = [v11 text];
  if (!v3)
  {

    goto LABEL_9;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  v9 = v8 != 0;
  return [a2 setEnabled_];
}

void closure #5 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:)(uint64_t a1, void (*a2)(void, void, id))
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
  a2(0, 0, v3);
}

unint64_t type metadata accessor for UITextField()
{
  result = lazy cache variable for type metadata for UITextField;
  if (!lazy cache variable for type metadata for UITextField)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITextField);
  }

  return result;
}

void *DOCBackgroundColorView.layerBackgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_layerBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCBackgroundColorView.layerBackgroundColor.setter(id a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_layerBackgroundColor;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (a1)
  {
    if (v4)
    {
      v5 = v1;
      type metadata accessor for UIColor();
      a1 = a1;
      v6 = v4;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {

        v4 = v6;
LABEL_10:

        return;
      }

      v1 = v5;
    }

    else
    {
      a1 = a1;
    }

LABEL_9:
    [v1 setNeedsLayout];

    goto LABEL_10;
  }

  if (v4)
  {
    goto LABEL_9;
  }
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

void (*DOCBackgroundColorView.layerBackgroundColor.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_layerBackgroundColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCBackgroundColorView.layerBackgroundColor.modify;
}

void DOCBackgroundColorView.layerBackgroundColor.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);
    v8 = *(v7 + v6);
    *(v7 + v6) = v3;
    if (v3)
    {
      if (v8)
      {
        type metadata accessor for UIColor();
        v5 = v3;
        v9 = v8;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {

          goto LABEL_11;
        }
      }

      else
      {
        v5 = v3;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v5 = 0;
    }

    [*(v2 + 32) setNeedsLayout];

    v5 = v8;
    goto LABEL_11;
  }

  v4 = v3;
  DOCBackgroundColorView.layerBackgroundColor.setter(v3);
  v5 = *(v2 + 24);
LABEL_11:

LABEL_12:

  free(v2);
}

id DOCBackgroundColorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *DOCBackgroundColorView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_backgroundLayer;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_layerBackgroundColor] = 0;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for DOCBackgroundColorView();
  v10 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 layer];
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_backgroundLayer;
  [v11 addSublayer_];

  v13 = *&v10[v12];
  [v10 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v13 setFrame_];
  return v10;
}

id DOCBackgroundColorView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCBackgroundColorView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_backgroundLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_layerBackgroundColor) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall DOCBackgroundColorView.layoutSubviews()()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for DOCBackgroundColorView();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = objc_opt_self();
  [v1 begin];
  v2 = [v1 setDisableActions_];
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_backgroundLayer);
  v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x60))(v2);
  if (v4)
  {
    v5 = v4;
    v6 = [v4 CGColor];
  }

  else
  {
    v6 = 0;
  }

  [v3 setBackgroundColor_];

  [v0 bounds];
  [v3 setFrame_];
  [v1 commit];
}

id DOCBackgroundColorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCBackgroundColorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_Sis5NeverOTg5125_s26DocumentManagerExecutables31DOCItemCollectionViewControllerC29StringWidthCalculationContextC6update5usingySS_tFSiSSXEfU0_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v24 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v24;
  v3 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v22 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(v6 + 36);

    v11 = String.count.getter();

    v13 = *(v24 + 16);
    v12 = *(v24 + 24);
    if (v13 >= v12 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
    }

    *(v24 + 16) = v13 + 1;
    *(v24 + 8 * v13 + 32) = v11;
    v8 = 1 << *(v6 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v14 = *(a1 + 56 + 8 * v10);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v22;
    }

    else
    {
      v16 = v10 << 6;
      v17 = v10 + 1;
      v18 = (a1 + 64 + 8 * v10);
      v9 = v22;
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = outlined consume of Set<UIPress>.Index._Variant(v5, v23, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<UIPress>.Index._Variant(v5, v23, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
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
  return result;
}

unint64_t specialized Sequence.forEach(_:)(unint64_t result, void *a2)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_26;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      while ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, v3);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_22;
        }

LABEL_9:
        swift_getObjectType();
        DOCNode.identifierKey.getter();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *a2;
        v9 = v24;
        *a2 = 0x8000000000000000;
        v10 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
        v12 = v9[2];
        v13 = (v11 & 1) == 0;
        v14 = __OFADD__(v12, v13);
        v15 = v12 + v13;
        if (v14)
        {
          goto LABEL_24;
        }

        v16 = v11;
        if (v9[3] < v15)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
          v10 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
          if ((v16 & 1) != (v17 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

LABEL_14:
          v18 = v24;
          if (v16)
          {
            goto LABEL_4;
          }

          goto LABEL_15;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_14;
        }

        v22 = v10;
        specialized _NativeDictionary.copy()();
        v10 = v22;
        v18 = v24;
        if (v16)
        {
LABEL_4:
          *(v18[7] + 8 * v10) = v6;
          swift_unknownObjectRelease();
          goto LABEL_5;
        }

LABEL_15:
        v18[(v10 >> 6) + 8] |= 1 << v10;
        v19 = v10;
        outlined init with copy of AnyHashable(v23, v18[6] + 40 * v10);
        *(v18[7] + 8 * v19) = v6;
        v20 = v18[2];
        v14 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v14)
        {
          goto LABEL_25;
        }

        v18[2] = v21;
LABEL_5:
        outlined destroy of AnyHashable(v23);
        *a2 = v18;
        result = swift_unknownObjectRelease();
        ++v5;
        if (v7 == v4)
        {
          return result;
        }
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v6 = *(v3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_9;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      result = __CocoaSet.count.getter();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v25 = a1 + 32;
  while (1)
  {
    v4 = *(v25 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = __CocoaSet.count.getter();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v23 = __CocoaSet.count.getter();
      v9 = v23 + v6;
      if (__OFADD__(v23, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v30 = v6;
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      __CocoaSet.count.getter();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v30)
    {
      goto LABEL_36;
    }

    v27 = v1;
    v28 = v2;
    v15 = v10 + 8 * v11 + 32;
    v24 = v10;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCUIImageMenuItem] and conformance [A], &_sSay26DocumentManagerExecutables18DOCUIImageMenuItemCGMd);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables18DOCUIImageMenuItemCGMd);
        v17 = specialized protocol witness for Collection.subscript.read in conformance [A](v29, i, v4);
        v19 = *v18;
        (v17)(v29, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      type metadata accessor for DOCUIImageMenuItem();
      swift_arrayInitWithCopy();
    }

    v1 = v27;
    v2 = v28;
    if (v30 >= 1)
    {
      v20 = *(v24 + 16);
      v21 = __OFADD__(v20, v30);
      v22 = v20 + v30;
      if (v21)
      {
        goto LABEL_37;
      }

      *(v24 + 16) = v22;
    }

LABEL_4:
    if (++v1 == v26)
    {
      return v2;
    }
  }

  v14 = v10;
  result = __CocoaSet.count.getter();
  v10 = v14;
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v30 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x277D84F90];
  }

  type metadata accessor for DOCBrowserHistoryItem(0);
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v3 = &_sSaySo19DOCConcreteLocationCGMd;
  while (1)
  {
    v5 = DOCBrowserHistoryItem.underlyingLocations.getter();
    v6 = v5;
    v7 = v5 >> 62;
    if (v5 >> 62)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = __CocoaSet.count.getter();
      v11 = v26 + v8;
      if (__OFADD__(v26, v8))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v10 + v8;
      if (__OFADD__(v10, v8))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v8;
    if (result)
    {
      if (!v9)
      {
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      __CocoaSet.count.getter();
      goto LABEL_15;
    }

    if (v9)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v7)
    {
      break;
    }

    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v14 >> 1) - v13) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v17 = v12 + 8 * v13 + 32;
    v27 = v12;
    if (v7)
    {
      if (v15 < 1)
      {
        goto LABEL_38;
      }

      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCConcreteLocation] and conformance [A], v3);
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3);
        v19 = v3;
        v20 = specialized protocol witness for Collection.subscript.read in conformance [A](v31, i, v6);
        v22 = *v21;
        (v20)(v31, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v23 = *(v27 + 16);
      v24 = __OFADD__(v23, v32);
      v25 = v23 + v32;
      if (v24)
      {
        goto LABEL_37;
      }

      *(v27 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v16 = v12;
  result = __CocoaSet.count.getter();
  v12 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void specialized EnumeratedSequence.Iterator.next()(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = (*v1 + 40 * v2);
  v6 = v4[4];
  v5 = v4[5];
  v7 = v4[6];
  v8 = v4[7];
  v9 = v4[8];
  v1[1] = v2 + 1;
  v10 = v1[2];
  if (__OFADD__(v10, 1))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v1[2] = v10 + 1;
  *a1 = v10;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
}

char *DOCItemCollectionViewController._tapBehavior.unsafeMutableAddressor()
{
  if (one-time initialization token for _tapBehavior != -1)
  {
    swift_once();
  }

  return &static DOCItemCollectionViewController._tapBehavior;
}

BOOL specialized OptionSet<>.insert(_:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *v4;
  _StringGuts.grow(_:)(18);

  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v8);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  _StringGuts.grow(_:)(18);

  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v9);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v10 = 0xEF3A65756C615677;
  if ((v7 & a2) == a2)
  {
    v11 = 0x6172287469617254;
  }

  else
  {

    v10 = a4;

    UITraitCollection.Traits.init(rawValue:)(v7 | a2, v4);
    v11 = a3;
  }

  result = (v7 & a2) != a2;
  *a1 = a2;
  a1[1] = v11;
  a1[2] = v10;
  return result;
}

uint64_t specialized Array<A>.fetchURLPairs(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v26 = a1;
  v27 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v7);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84F90];
  result = dispatch_group_create();
  v11 = result;
  if (!(a3 >> 62))
  {
    v12 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_10:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v18 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    v20 = v27;
    v19[2] = v26;
    v19[3] = v20;
    v19[4] = v9;
    v39 = partial apply for closure #2 in Array<A>.fetchURLPairs(_:);
    v40 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v38 = &block_descriptor_991;
    v21 = _Block_copy(&aBlock);

    v22 = v28;
    static DispatchQoS.unspecified.getter();
    v34 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v23 = v30;
    v24 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v21);

    (*(v32 + 8))(v23, v24);
    (*(v29 + 8))(v22, v31);
  }

  result = __CocoaSet.count.getter();
  v12 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v12 >= 1)
  {
    v13 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x24C1FC540](v13, a3);
      }

      else
      {
        v14 = *(a3 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      ++v13;
      dispatch_group_enter(v11);
      v15 = swift_allocObject();
      v15[2] = v11;
      v15[3] = v14;
      v15[4] = v9;
      v39 = partial apply for specialized closure #1 in Array<A>.fetchURLPairs(_:);
      v40 = v15;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
      v38 = &block_descriptor_985;
      v16 = _Block_copy(&aBlock);

      v17 = v11;
      swift_unknownObjectRetain();

      [v14 fetchURL_];
      _Block_release(v16);
      swift_unknownObjectRelease();
    }

    while (v12 != v13);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void specialized closure #1 in Array<A>.fetchURLPairs(_:)(uint64_t a1, void *a2, NSObject *a3, void *a4, uint64_t a5)
{
  v56 = a4;
  v57 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p4node_10Foundation3URLV3urltMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v55 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.UI);
    v23 = v56;
    swift_unknownObjectRetain();
    v24 = a2;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v58[0] = v29;
      *v27 = 136446466;
      v30 = [v23 description];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v58);

      *(v27 + 4) = v34;
      *(v27 + 12) = 2112;
      v35 = a2;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v36;
      *v28 = v36;
      _os_log_impl(&dword_2493AC000, v25, v26, "Error fetching the url for item %{public}s: %@", v27, 0x16u);
      outlined destroy of CharacterSet?(v28, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v27, -1, -1);
    }

    v37 = v57;

    dispatch_group_leave(v37);
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(a1, v16, &_s10Foundation3URLVSgMd);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      outlined destroy of CharacterSet?(v16, &_s10Foundation3URLVSgMd);
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.UI);
      v39 = v56;
      swift_unknownObjectRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v58[0] = v43;
        *v42 = 136446210;
        v44 = [v39 description];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v58);

        *(v42 + 4) = v48;
        _os_log_impl(&dword_2493AC000, v40, v41, "Error fetching the url for item: %{public}s but also did not get an error", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x24C1FE850](v43, -1, -1);
        MEMORY[0x24C1FE850](v42, -1, -1);
      }
    }

    else
    {
      (*(v18 + 32))(v21, v16, v17);
      v49 = *(v8 + 48);
      *v12 = v56;
      (*(v18 + 16))(&v12[v49], v21, v17);
      v50 = a5;
      swift_beginAccess();
      v51 = *(a5 + 16);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a5 + 16) = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1, v51);
        *(a5 + 16) = v51;
      }

      v54 = v51[2];
      v53 = v51[3];
      if (v54 >= v53 >> 1)
      {
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v53 > 1, v54 + 1, 1, v51);
      }

      v51[2] = v54 + 1;
      outlined init with take of (key: URL, value: FPItem)(v12, v51 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v54, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMd);
      *(v50 + 16) = v51;
      swift_endAccess();
      (*(v18 + 8))(v21, v17);
    }

    dispatch_group_leave(v57);
  }
}

uint64_t specialized DOCFocusableCollectionView.focusItem(at:isUserInteraction:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v73 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchQoS();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v9);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v67 = v14;
  v68 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v79 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v80 = &v64 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v64 - v23;
  v27 = MEMORY[0x28223BE20](v25, v26);
  v29 = &v64 - v28;
  v30 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0xD8))(v27))
  {
    v32 = v31;
    ObjectType = swift_getObjectType();
    (*(v32 + 64))(v2, &protocol witness table for DOCItemCollectionView, a1, a2 & 1, ObjectType, v32);
    swift_unknownObjectRelease();
  }

  v70 = a2;
  v34 = *(v12 + 16);
  v69 = a1;
  v66 = v12 + 16;
  v65 = v34;
  v34(v29, a1, v11);
  v35 = *(v12 + 56);
  v36 = v35(v29, 0, 1, v11);
  v37 = *v30 & *v2;
  v81 = v11;
  v82 = v12;
  v38 = *(v37 + 240);
  v39 = v37 + 240;
  v40 = v38(v36);
  outlined init with copy of DOCGridLayout.Spec?(v29, v24, &_s10Foundation9IndexPathVSgMd);
  (*(*v40 + 112))(v24);

  outlined destroy of CharacterSet?(v29, &_s10Foundation9IndexPathVSgMd);
  v41 = v35(v29, 1, 1, v81);
  v42 = v38(v41);
  outlined init with copy of DOCGridLayout.Spec?(v29, v24, &_s10Foundation9IndexPathVSgMd);
  (*(*v42 + 136))(v24);

  outlined destroy of CharacterSet?(v29, &_s10Foundation9IndexPathVSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
  v43 = *(v82 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_249B9A480;
  v77 = v39;
  v78 = v38;
  v45 = (v38)();
  v47 = v81;
  v46 = v82;
  v48 = v80;
  (*(*v45 + 104))(v45);

  v49 = *(v46 + 48);
  result = v49(v48, 1, v47);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v80 = *(v46 + 32);
    (v80)(v44 + ((v43 + 32) & ~v43), v48, v47);
    specialized DOCFocusableCollectionView.setIndexPathsForSelectedItems(_:animated:scrollPosition:)(v44, 0, 0);
    swift_setDeallocating();
    swift_arrayDestroy();
    v51 = swift_deallocClassInstance();
    v52 = v78(v51);
    v53 = v79;
    (*(*v52 + 104))(v52);

    result = v49(v53, 1, v47);
    if (result != 1)
    {
      specialized DOCFocusableCollectionView.scrollToItemIfNeeded(at:)(v53);
      (*(v46 + 8))(v53, v47);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v54 = static OS_dispatch_queue.main.getter();
      v55 = v68;
      v65(v68, v69, v47);
      v56 = (v43 + 24) & ~v43;
      v57 = v56 + v67;
      v58 = swift_allocObject();
      *(v58 + 16) = v3;
      (v80)(v58 + v56, v55, v47);
      *(v58 + v57) = v70 & 1;
      aBlock[4] = partial apply for specialized closure #1 in DOCFocusableCollectionView.focusItem(at:isUserInteraction:);
      aBlock[5] = v58;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_1024;
      v59 = _Block_copy(aBlock);
      v60 = v3;

      v61 = v71;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      v62 = v73;
      v63 = v76;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x24C1FB9A0](0, v61, v62, v59);
      _Block_release(v59);

      (*(v75 + 8))(v62, v63);
      return (*(v72 + 8))(v61, v74);
    }
  }

  __break(1u);
  return result;
}

uint64_t DOCItemCollectionViewController.performWhenSafeToChangeFirstResponder(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x8D8))();
  if (!v6)
  {
    return a1();
  }

  v8 = *((*v5 & *v2) + 0x910);

  return v8(a1, a2);
}

uint64_t one-time initialization function for DOCItemCollectionViewDropSessionDidExit()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000027, 0x8000000249BE14B0);
  static NSNotificationName.DOCItemCollectionViewDropSessionDidExit = result;
  return result;
}

uint64_t *NSNotificationName.DOCItemCollectionViewDropSessionDidExit.unsafeMutableAddressor()
{
  if (one-time initialization token for DOCItemCollectionViewDropSessionDidExit != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.DOCItemCollectionViewDropSessionDidExit;
}

uint64_t one-time initialization function for DOCItemCollectionDidUpdateIsScrollEnabled()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000029, 0x8000000249BE1480);
  static NSNotificationName.DOCItemCollectionDidUpdateIsScrollEnabled = result;
  return result;
}

uint64_t *NSNotificationName.DOCItemCollectionDidUpdateIsScrollEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for DOCItemCollectionDidUpdateIsScrollEnabled != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.DOCItemCollectionDidUpdateIsScrollEnabled;
}

uint64_t one-time initialization function for DOCItemCollectionDidUpdateContentOffset()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000027, 0x8000000249BE1450);
  static NSNotificationName.DOCItemCollectionDidUpdateContentOffset = result;
  return result;
}

uint64_t *NSNotificationName.DOCItemCollectionDidUpdateContentOffset.unsafeMutableAddressor()
{
  if (one-time initialization token for DOCItemCollectionDidUpdateContentOffset != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.DOCItemCollectionDidUpdateContentOffset;
}

uint64_t one-time initialization function for DOCItemCollectionViewDidLayoutSubviews()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000026, 0x8000000249BE14E0);
  static NSNotificationName.DOCItemCollectionViewDidLayoutSubviews = result;
  return result;
}

uint64_t one-time initialization function for DOCItemCollectionViewDidUpdateContents()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000026, 0x8000000249BE1420);
  static NSNotificationName.DOCItemCollectionViewDidUpdateContents = result;
  return result;
}

uint64_t *NSNotificationName.DOCItemCollectionViewDidUpdateContents.unsafeMutableAddressor()
{
  if (one-time initialization token for DOCItemCollectionViewDidUpdateContents != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.DOCItemCollectionViewDidUpdateContents;
}

uint64_t one-time initialization function for DOCItemCollectionViewDidChangeEditMode()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000026, 0x8000000249BE13F0);
  static NSNotificationName.DOCItemCollectionViewDidChangeEditMode = result;
  return result;
}

uint64_t *NSNotificationName.DOCItemCollectionViewDidChangeEditMode.unsafeMutableAddressor()
{
  if (one-time initialization token for DOCItemCollectionViewDidChangeEditMode != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.DOCItemCollectionViewDidChangeEditMode;
}

uint64_t one-time initialization function for DOCItemCollectionViewDidLoadContents()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BE13C0);
  static NSNotificationName.DOCItemCollectionViewDidLoadContents = result;
  return result;
}

uint64_t *NSNotificationName.DOCItemCollectionViewDidLoadContents.unsafeMutableAddressor()
{
  if (one-time initialization token for DOCItemCollectionViewDidLoadContents != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.DOCItemCollectionViewDidLoadContents;
}

uint64_t one-time initialization function for DOCItemCollectionViewDidFinishGathering()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000027, 0x8000000249BE1390);
  static NSNotificationName.DOCItemCollectionViewDidFinishGathering = result;
  return result;
}

uint64_t ScrollPositionInfo.description.getter()
{
  _StringGuts.grow(_:)(65);
  MEMORY[0x24C1FAEA0](0xD000000000000011, 0x8000000249BE0B40);
  v1 = ScrollPositionInfo.ItemOffset.description.getter();
  MEMORY[0x24C1FAEA0](v1);

  MEMORY[0x24C1FAEA0](0xD000000000000014, 0x8000000249BE0B60);
  v2 = type metadata accessor for ScrollPositionInfo(0);
  if (*(v0 + *(v2 + 20)))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + *(v2 + 20)))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x24C1FAEA0](v3, v4);

  MEMORY[0x24C1FAEA0](0xD000000000000016, 0x8000000249BE0B80);
  type metadata accessor for ScrollPositionInfo.ItemOffset(0);
  lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v5 = Dictionary.description.getter();
  MEMORY[0x24C1FAEA0](v5);

  return 0;
}

uint64_t ScrollPositionInfo.ItemOffset.description.getter()
{
  _StringGuts.grow(_:)(46);
  MEMORY[0x24C1FAEA0](0x203A65646F6E28, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](0x507865646E69203BLL, 0xED0000203A687461);
  type metadata accessor for ScrollPositionInfo.ItemOffset(0);
  type metadata accessor for IndexPath();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v0);

  MEMORY[0x24C1FAEA0](0xD000000000000013, 0x8000000249BE08E0);
  v1 = Double.description.getter();
  MEMORY[0x24C1FAEA0](v1);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return 0;
}

uint64_t RestorableSearchInfo.description.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(25);
  MEMORY[0x24C1FAEA0](0x5468637261657328, 0xED0000203A6D7265);
  MEMORY[0x24C1FAEA0](a1, a2);
  MEMORY[0x24C1FAEA0](0x3A65706F6373203BLL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSearchScope_pMd);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

Swift::Int DOCItemHierarchyEvent.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](0);
  return Hasher._finalize()();
}

id DOCDragMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *DOCDragMonitor.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static DOCDragMonitor.shared;
}

id static DOCDragMonitor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static DOCDragMonitor.shared;

  return v0;
}

void static DOCDragMonitor.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DOCDragMonitor.shared;
  static DOCDragMonitor.shared = a1;
}

uint64_t (*static DOCDragMonitor.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

id key path getter for static DOCDragMonitor.shared : DOCDragMonitor.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DOCDragMonitor.shared;
  *a1 = static DOCDragMonitor.shared;

  return v2;
}

void key path setter for static DOCDragMonitor.shared : DOCDragMonitor.Type(id *a1)
{
  v1 = one-time initialization token for shared;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static DOCDragMonitor.shared;
  static DOCDragMonitor.shared = v2;
}

id DOCDragMonitor.init()()
{
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCDragMonitor_isItemCollectionDragActive] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCDragMonitor();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t DOCItemCollectionViewController.editingMode.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_editingMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionViewController.editingMode.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_editingMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t static DOCItemCollectionViewController._tapBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for _tapBehavior != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = static DOCItemCollectionViewController._tapBehavior;
  return result;
}

uint64_t static DOCItemCollectionViewController._tapBehavior.setter(char *a1)
{
  v1 = *a1;
  if (one-time initialization token for _tapBehavior != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static DOCItemCollectionViewController._tapBehavior = v1;
  return result;
}

uint64_t (*static DOCItemCollectionViewController._tapBehavior.modify())()
{
  if (one-time initialization token for _tapBehavior != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DOCSmartFolderManager.defaultSaveLocationItemId.modify;
}

uint64_t key path getter for static DOCItemCollectionViewController._tapBehavior : DOCItemCollectionViewController.Type@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for _tapBehavior != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = static DOCItemCollectionViewController._tapBehavior;
  return result;
}

uint64_t key path setter for static DOCItemCollectionViewController._tapBehavior : DOCItemCollectionViewController.Type(char *a1)
{
  v1 = *a1;
  if (one-time initialization token for _tapBehavior != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static DOCItemCollectionViewController._tapBehavior = v1;
  return result;
}

void DOCItemCollectionViewController.familySharedFolderTip.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___familySharedFolderTip) == 1)
  {
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___familySharedFolderTip) = 0;
  }
}

void *(*DOCItemCollectionViewController.familySharedFolderTip.modify(void *a1))(void *result)
{
  *a1 = v1;
  DOCItemCollectionViewController.familySharedFolderTip.getter();
  return DOCItemCollectionViewController.familySharedFolderTip.modify;
}

uint64_t DOCItemCollectionViewController.cancelPendingTasks()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingTasks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = 1 << *(*(v0 + v1) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  v12 = MEMORY[0x277D84A98];
  v13 = MEMORY[0x277D84AC0];
  if (v8)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      *(v0 + v1) = MEMORY[0x277D84FA0];
    }

    v8 = *(v4 + 8 * v14);
    ++v11;
    if (v8)
    {
      v11 = v14;
      do
      {
LABEL_9:
        v8 &= v8 - 1;

        MEMORY[0x24C1FB330](v15, MEMORY[0x277D84F78] + 8, v12, v13);
      }

      while (v8);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t DOCItemCollectionViewController.isOptionKeyPressed.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isOptionKeyPressed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionViewController.isOptionKeyPressed.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isOptionKeyPressed;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCItemCollectionViewController.diffableDataSource.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_fiNodeDataSource);
  if (v3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables25DOCNodeDiffableDataSourceCySo6FINodeCGMd);
    v10 = &protocol witness table for DOCNodeDiffableDataSource<A>;
    *&v8 = v3;
    outlined init with take of DOCGoToFolderCandidate(&v8, a1);
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_fpNodeDataSource);
    if (v4)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables25DOCNodeDiffableDataSourceCySo6FPItemCGMd);
      v6 = &protocol witness table for DOCNodeDiffableDataSource<A>;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = v4;
    a1[3] = v5;
    a1[4] = v6;
  }
}

uint64_t DOCItemCollectionViewController.isActiveDragSource.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isActiveDragSource;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.isActiveDragSource.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isActiveDragSource;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    if (a1)
    {
      v6 = v1;
      v7 = v1;
    }

    else
    {
      v7 = 0;
    }

    v8 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf];
    *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf] = v7;
  }
}

void (*DOCItemCollectionViewController.isActiveDragSource.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isActiveDragSource;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionViewController.isActiveDragSource.modify;
}

void DOCItemCollectionViewController.isActiveDragSource.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if ((a2 & 1) == 0)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_9;
    }

    v7 = v2[3];
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = v7;
    v7 = v7;
    goto LABEL_8;
  }

  if (((v5 ^ v6) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[3];
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 0;
LABEL_8:
  v9 = *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf];
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf] = v8;

LABEL_9:

  free(v2);
}

uint64_t DOCItemCollectionViewController.wantsTipsHeader.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isFilesApp] && (v1 = objc_msgSend(objc_opt_self(), sel_showTips), v2 = objc_msgSend(v1, sel_isEnabled), v1, v2))
  {
    DOCItemCollectionViewController.getCurrentLocation()(v3);
    v5 = v4;
    v6 = [objc_opt_self() sharedItemsLocation];
    v7 = v6;
    if (v5)
    {
      if (v6)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
        v8 = static NSObject.== infix(_:_:)();
      }

      else
      {
        v8 = 0;
      }

      v7 = v5;
    }

    else
    {
      if (!v6)
      {
        v8 = 1;
        return v8 & 1;
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void __swiftcall DOCItemCollectionViewController.getCurrentLocation()(DOCConcreteLocation_optional *__return_ptr retstr)
{
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xC70))();
  if (v3)
  {
    v4 = v3;
    v5 = (*((*v2 & *v1) + 0xA68))();
    v6 = [v5 identifier];

    [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v6 node:v4];
    swift_unknownObjectRelease();
  }

  else
  {
    (*((*v2 & *v1) + 0xA50))(v8);
    v7 = v8[3];
    outlined destroy of DOCItemCollectionConfiguration(v8);
  }
}

uint64_t DOCItemCollectionViewController.familyFetcher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_familyFetcher;
  swift_beginAccess();
  return outlined init with copy of DOCSidebarItemIconProvider(v1 + v3, a1);
}

uint64_t DOCItemCollectionViewController.familyFetcher.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_familyFetcher;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v1 + v3);
  outlined init with take of DOCGoToFolderCandidate(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t DOCItemCollectionViewController.tipViewIsAvailable.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipViewIsAvailable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionViewController.tipViewIsAvailable.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipViewIsAvailable;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCItemCollectionViewController.currentDragSession.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentDragSession;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  [static DOCDragMonitor.shared setIsItemCollectionDragActive_];
  return swift_unknownObjectRelease();
}

void (*DOCItemCollectionViewController.currentDragSession.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentDragSession;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCItemCollectionViewController.currentDragSession.modify;
}

void DOCItemCollectionViewController.currentDragSession.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v5 = v3[3];
    v4 = v3[4];
    swift_beginAccess();
    [static DOCDragMonitor.shared setIsItemCollectionDragActive_];
  }

  free(v3);
}

void *DOCItemCollectionViewController.currentClickyOrbMenu.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentClickyOrbMenu;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.currentClickyOrbMenu.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentClickyOrbMenu;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCItemCollectionViewController.currentClickyOrbConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentClickyOrbConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.currentClickyOrbConfiguration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentClickyOrbConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for DOCItemCollectionViewController.blockToRunWhenMenuInteractionFinishedDismissing : DOCItemCollectionViewController@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x908))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCItemCollectionViewController.blockToRunWhenMenuInteractionFinishedDismissing : DOCItemCollectionViewController(uint64_t *a1, void **a2)
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

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x910);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCItemCollectionViewController.itemHierarchyEventListener.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemHierarchyEventListener;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCItemCollectionViewController.itemHierarchyEventListener.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemHierarchyEventListener;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

id DOCItemCollectionViewController.sortOptionsAccessibilityModelView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortOptionsAccessibilityModelView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCItemCollectionViewController.sortOptionsAccessibilityModelView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortOptionsAccessibilityModelView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Int DOCItemCollectionRowColumn.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

uint64_t DOCItemCollectionViewController.multiselectActionStatus.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_multiselectActionStatus;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.multiselectActionStatus.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_multiselectActionStatus;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v1) + 0xAE8))(v4);
  if (v6)
  {
    v7 = v6;
    v8 = [v6 effectiveFullBrowser];

    if (v8)
    {
      v9 = *(v1 + v3);
      v10 = [v8 effectiveBrowserViewController];
      if (v10)
      {
        v11 = v10;
        v12 = (*((*v5 & *v10) + 0xE8))();

        if (v12)
        {
          type metadata accessor for DOCItemCollectionViewController(0);
          v13 = swift_dynamicCastClass();
          if (v13)
          {
            v14 = v13;
            v15 = swift_allocObject();
            *(v15 + 16) = v14;
            *(v15 + 24) = v9 == 1;
            *(v15 + 32) = v8;
            v16 = v12;
            v8 = v8;
            DOCRunInMainThread(_:)();
          }

          else
          {

            v8 = v12;
          }
        }
      }
    }
  }
}

void (*DOCItemCollectionViewController.multiselectActionStatus.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_multiselectActionStatus;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCItemCollectionViewController.multiselectActionStatus.modify;
}

void DOCItemCollectionViewController.multiselectActionStatus.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & **(v3 + 24)) + 0xAE8))(v4);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 effectiveFullBrowser];

      if (v8)
      {
        v9 = *(*(v3 + 24) + *(v3 + 32));
        v10 = [v8 effectiveBrowserViewController];
        if (v10)
        {
          v11 = *((*v5 & *v10) + 0xE8);
          v12 = v10;
          v13 = v11();

          if (v13)
          {
            type metadata accessor for DOCItemCollectionViewController(0);
            v14 = swift_dynamicCastClass();
            if (v14)
            {
              v15 = v14;
              v16 = swift_allocObject();
              *(v16 + 16) = v15;
              *(v16 + 24) = v9 == 1;
              *(v16 + 32) = v8;
              v17 = v13;
              v13 = v8;
              DOCRunInMainThread(_:)();

              v8 = v17;
            }

            v8 = v13;
          }
        }
      }
    }
  }

  free(v3);
}