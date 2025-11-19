@interface CKEmbeddedRichLinkView
- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4;
- (CGSize)sizeThatFits:(CGSize)result;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (id)transitionContextForCustomizationPickerController:(id)a3;
- (void)balloonPluginDataSourceDidChange:(id)a3;
- (void)customizationPickerControllerDidDismiss:(id)a3;
- (void)customizationPickerControllerWillDismiss:(id)a3;
- (void)didMoveToWindow;
- (void)didTapDiscardButton;
- (void)didTapToPresentEditMenu:(id)a3;
- (void)layoutSubviews;
- (void)pluginPayloadDidLoad:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation CKEmbeddedRichLinkView

- (void)layoutSubviews
{
  v2 = self;
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

- (void)willMoveToWindow:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_190AF43F0(a3);
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_190AF465C();
}

- (void)didTapToPresentEditMenu:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_190AF7398();
  swift_unknownObjectRelease();
}

- (void)didTapDiscardButton
{
  v2 = self;
  sub_190AF542C();
}

- (void)pluginPayloadDidLoad:(id)a3
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

- (void)balloonPluginDataSourceDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190AF61D0(v4);
}

- (void)customizationPickerControllerWillDismiss:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = a3;
  v7 = self;
  if (Strong)
  {
    [Strong embeddedRichLinkViewWillDismissCustomizationPicker_];
    swift_unknownObjectRelease();
  }

  v8 = *(&v7->super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_discardButton);
  [v8 setAlpha_];
  CGAffineTransformMakeScale(&v9, 0.8, 0.8);
  [v8 setTransform_];
}

- (void)customizationPickerControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190AF7680();
}

- (id)transitionContextForCustomizationPickerController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_190AF78E4();

  return v6;
}

- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4
{
  [(CKEmbeddedRichLinkView *)self frame:a3];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_190AF7A18();

  return v10;
}

@end