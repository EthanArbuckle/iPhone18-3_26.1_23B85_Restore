@interface CKEmbeddedRichLinkView
- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration;
- (CGSize)sizeThatFits:(CGSize)result;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (id)transitionContextForCustomizationPickerController:(id)controller;
- (void)balloonPluginDataSourceDidChange:(id)change;
- (void)customizationPickerControllerDidDismiss:(id)dismiss;
- (void)customizationPickerControllerWillDismiss:(id)dismiss;
- (void)didMoveToWindow;
- (void)didTapDiscardButton;
- (void)didTapToPresentEditMenu:(id)menu;
- (void)layoutSubviews;
- (void)pluginPayloadDidLoad:(id)load;
- (void)willMoveToWindow:(id)window;
@end

@implementation CKEmbeddedRichLinkView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190AF3F74();
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_pluginEntryViewController);
  if (v3)
  {
    [v3 sizeThatFits_];
  }

  return result;
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_190AF43F0(window);
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_190AF465C();
}

- (void)didTapToPresentEditMenu:(id)menu
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_190AF7398();
  swift_unknownObjectRelease();
}

- (void)didTapDiscardButton
{
  selfCopy = self;
  sub_190AF542C();
}

- (void)pluginPayloadDidLoad:(id)load
{
  v4 = sub_190D50FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  v8 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_pluginEntryViewController);
  if (v8)
  {
    [v8 ck:0.0 constrainedSizeThatFits:0.0];
  }

  (*(v5 + 8))(v7, v4);
}

- (void)balloonPluginDataSourceDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_190AF61D0(changeCopy);
}

- (void)customizationPickerControllerWillDismiss:(id)dismiss
{
  Strong = swift_unknownObjectWeakLoadStrong();
  dismissCopy = dismiss;
  selfCopy = self;
  if (Strong)
  {
    [Strong embeddedRichLinkViewWillDismissCustomizationPicker_];
    swift_unknownObjectRelease();
  }

  v8 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_discardButton);
  [v8 setAlpha_];
  CGAffineTransformMakeScale(&v9, 0.8, 0.8);
  [v8 setTransform_];
}

- (void)customizationPickerControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_190AF7680();
}

- (id)transitionContextForCustomizationPickerController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_190AF78E4();

  return v6;
}

- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration
{
  [(CKEmbeddedRichLinkView *)self frame:interaction];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v10 = sub_190AF7A18();

  return v10;
}

@end