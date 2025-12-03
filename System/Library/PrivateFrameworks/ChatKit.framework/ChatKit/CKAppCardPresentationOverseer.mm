@interface CKAppCardPresentationOverseer
- (BOOL)isExpanded;
- (BOOL)isPresentingBarelyVisibleAppCard;
- (BOOL)isPresentingCard;
- (BOOL)isPresentingInSendMenuPopover;
- (BOOL)isPresentingInSheetController;
- (BOOL)presentationBegan;
- (BOOL)presentedAppBypassesSendMenu;
- (BOOL)shouldAnimateDismissal;
- (BOOL)shouldAnimatePresentationForPresentationStyle:(unint64_t)style;
- (BOOL)updateCurrentBrowserWithDataSource:(id)source;
- (CKAppCardPresentationOverseer)init;
- (CKAppCardPresentationOverseer)initWithPresentingViewController:(id)controller sendDelegate:(id)delegate;
- (CKAppCardPresentationOverseerDelegate)delegate;
- (CKBrowserViewControllerProtocol)browserViewController;
- (double)appCardDismissPadding;
- (id)updateCurrentBrowserForPlugin:(id)plugin dataSource:(id)source pluginContext:(id)context;
- (void)_sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame:(id)frame;
- (void)checkForTouchInExtensionWithCompletion:(id)completion;
- (void)dismissCardAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissCardAnimated:(BOOL)animated overrideExceptions:(BOOL)exceptions completion:(id)completion;
- (void)extensionRemoteConnectionWasInterruptedWithNotification:(id)notification;
- (void)fadeOutCardWithCompletion:(id)completion;
- (void)presentCardWithStyle:(unint64_t)style animated:(BOOL)animated completion:(id)completion;
- (void)presentPopoverFromView:(UIView *)view sourceRect:(CGRect)rect completion:(id)completion;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)requestPresentationStyle:(unint64_t)style animated:(BOOL)animated;
- (void)setAppCardDismissPadding:(double)padding;
- (void)setPresentationBegan:(BOOL)began;
- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)identifier;
- (void)updatePopoverLocation:(CGRect)location completion:(id)completion;
@end

@implementation CKAppCardPresentationOverseer

- (CKBrowserViewControllerProtocol)browserViewController
{
  v3 = *(self + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC7ChatKit30AppCardContainerViewController_remoteViewController);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CKAppCardPresentationOverseerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (double)appCardDismissPadding
{
  v3 = OBJC_IVAR___CKAppCardPresentationOverseer_appCardDismissPadding;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAppCardDismissPadding:(double)padding
{
  selfCopy = self;
  CKAppCardPresentationOverseer.appCardDismissPadding.setter(padding);
}

- (BOOL)presentationBegan
{
  v3 = OBJC_IVAR___CKAppCardPresentationOverseer_presentationBegan;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPresentationBegan:(BOOL)began
{
  v5 = OBJC_IVAR___CKAppCardPresentationOverseer_presentationBegan;
  swift_beginAccess();
  *(self + v5) = began;
}

- (CKAppCardPresentationOverseer)initWithPresentingViewController:(id)controller sendDelegate:(id)delegate
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  return CKAppCardPresentationOverseer.init(presenting:sendDelegate:)(controllerCopy);
}

- (id)updateCurrentBrowserForPlugin:(id)plugin dataSource:(id)source pluginContext:(id)context
{
  if (context)
  {
    pluginCopy = plugin;
    sourceCopy = source;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    pluginCopy2 = plugin;
    sourceCopy2 = source;
    selfCopy2 = self;
  }

  v14 = CKAppCardPresentationOverseer.updateCurrentBrowser(for:dataSource:pluginContext:)(plugin, source, v16);

  sub_19021E7D8(v16);

  return v14;
}

- (BOOL)updateCurrentBrowserWithDataSource:(id)source
{
  sourceCopy = source;
  selfCopy = self;
  browserViewController = [(CKAppCardPresentationOverseer *)selfCopy browserViewController];
  if (browserViewController)
  {
    v7 = browserViewController;
    if (([(CKBrowserViewControllerProtocol *)browserViewController respondsToSelector:sel_canReplaceDataSource]& 1) != 0 && ![(CKBrowserViewControllerProtocol *)v7 canReplaceDataSource])
    {
      v8 = 0;
    }

    else
    {
      [(CKBrowserViewControllerProtocol *)v7 setBalloonPluginDataSource:sourceCopy];
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isPresentingInSendMenuPopover
{
  selfCopy = self;
  v3 = sub_19088D490();

  if (v3)
  {
  }

  return v3 != 0;
}

- (BOOL)isPresentingInSheetController
{
  selfCopy = self;
  if ([(CKAppCardPresentationOverseer *)selfCopy isPresentingInSendMenuPopover]|| (v3 = *(selfCopy + OBJC_IVAR___CKAppCardPresentationOverseer_container)) == 0)
  {

    return 0;
  }

  else
  {
    modalPresentationStyle = [v3 modalPresentationStyle];

    return modalPresentationStyle == 1;
  }
}

- (void)extensionRemoteConnectionWasInterruptedWithNotification:(id)notification
{
  v4 = sub_190D50FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  selfCopy = self;
  sub_19088D630();

  (*(v5 + 8))(v7, v4);
}

- (void)presentCardWithStyle:(unint64_t)style animated:(BOOL)animated completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = style;
  *(v13 + 24) = animated;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_190D572E0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_190DD9998;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_190DD99A0;
  v16[5] = v15;
  selfCopy = self;
  sub_190C798DC(0, 0, v11, &unk_190DD99A8, v16);
}

- (void)presentPopoverFromView:(UIView *)view sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  *(v16 + 2) = view;
  v16[3] = x;
  v16[4] = y;
  v16[5] = width;
  v16[6] = height;
  *(v16 + 7) = v15;
  *(v16 + 8) = self;
  v17 = sub_190D572E0();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_190DD9978;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_190DD9980;
  v19[5] = v18;
  viewCopy = view;
  selfCopy = self;
  sub_190C798DC(0, 0, v14, &unk_190DD9988, v19);
}

- (void)updatePopoverLocation:(CGRect)location completion:(id)completion
{
  height = location.size.height;
  width = location.size.width;
  y = location.origin.y;
  x = location.origin.x;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = x;
  v14[3] = y;
  v14[4] = width;
  v14[5] = height;
  *(v14 + 6) = v13;
  *(v14 + 7) = self;
  v15 = sub_190D572E0();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_190DD9958;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_190DD9960;
  v17[5] = v16;
  selfCopy = self;
  sub_190C798DC(0, 0, v12, &unk_190DD9968, v17);
}

- (void)fadeOutCardWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  CKAppCardPresentationOverseer.fadeOutCard(completion:)(sub_190841A8C, v5);
}

- (void)dismissCardAnimated:(BOOL)animated completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = animated;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_190D572E0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_190DD9938;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_190DD9940;
  v14[5] = v13;
  selfCopy = self;
  sub_190C798DC(0, 0, v9, &unk_190DD9948, v14);
}

- (void)dismissCardAnimated:(BOOL)animated overrideExceptions:(BOOL)exceptions completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = animated;
  *(v13 + 17) = exceptions;
  *(v13 + 24) = v12;
  *(v13 + 32) = self;
  v14 = sub_190D572E0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_190DD9918;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_190DD9920;
  v16[5] = v15;
  selfCopy = self;
  sub_190C798DC(0, 0, v11, &unk_190DD9928, v16);
}

- (BOOL)isPresentingCard
{
  v2 = *(self + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  if (!v2)
  {
    return 0;
  }

  selfCopy = self;
  presentingViewController = [v2 presentingViewController];

  if (!presentingViewController)
  {
    return 0;
  }

  return 1;
}

- (BOOL)presentedAppBypassesSendMenu
{
  selfCopy = self;
  v3 = CKAppCardPresentationOverseer.presentedAppBypassesSendMenu.getter();

  return v3 & 1;
}

- (BOOL)isExpanded
{
  v2 = *(self + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  if (!v2)
  {
    return 0;
  }

  selfCopy = self;
  v4 = v2;
  v5 = sub_1909E87E4();

  return v5 == 1;
}

- (void)requestPresentationStyle:(unint64_t)style animated:(BOOL)animated
{
  selfCopy = self;
  CKAppCardPresentationOverseer.request(_:animated:)(style, animated);
}

- (void)checkForTouchInExtensionWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_190D572E0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_190DD9908;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_190DD75C0;
  v12[5] = v11;
  selfCopy = self;
  sub_190C798DC(0, 0, v7, &unk_190DD75C8, v12);
}

- (BOOL)shouldAnimatePresentationForPresentationStyle:(unint64_t)style
{
  selfCopy = self;
  LOBYTE(style) = CKAppCardPresentationOverseer.shouldAnimatePresentation(for:)(style);

  return style & 1;
}

- (BOOL)shouldAnimateDismissal
{
  selfCopy = self;
  v3 = CKAppCardPresentationOverseer.shouldAnimateDismissal.getter();

  return v3 & 1;
}

- (CKAppCardPresentationOverseer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v3 = *(self + OBJC_IVAR___CKAppCardPresentationOverseer_container);
  if (v3)
  {
    selfCopy = self;
    v4 = v3;
    sub_19089266C(v4);
  }
}

- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  CKAppCardPresentationOverseer.sheetPresentationControllerDidChangeSelectedDetentIdentifier(_:)(identifierCopy);
}

- (BOOL)isPresentingBarelyVisibleAppCard
{
  selfCopy = self;
  v3 = COERCE_DOUBLE(sub_190894CF0());
  v5 = v4;
  v7 = v6;
  v9 = v8;

  return (v9 & 1) == 0 && v3 > 0.0 && v3 * 0.8 <= vabdd_f64(v7, v5);
}

- (void)_sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame:(id)frame
{
  frameCopy = frame;
  selfCopy = self;
  CKAppCardPresentationOverseer._sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame(_:)(frameCopy);
}

@end