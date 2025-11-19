@interface CKLinkPreviewTextAttachment
- (BOOL)canPresentCustomizationPicker;
- (BOOL)supportsCustomizationForEmbeddedRichLinkView:(id)a3;
- (_TtC7ChatKit27CKLinkPreviewTextAttachment)initWithData:(id)a3 ofType:(id)a4;
- (double)downscaleMultiplier;
- (double)downscaleMultiplierForEmbeddedRichLinkView:(id)a3;
- (double)maxWidthForEmbeddedRichLinkView:(id)a3;
- (id)imageForBounds:(CGRect)a3 textContainer:(id)a4 characterIndex:(int64_t)a5;
- (id)makeThrowAnimationSnapshotView;
- (id)viewProviderForParentView:(id)a3 location:(id)a4 textContainer:(id)a5;
- (void)embeddedRichLinkView:(id)a3 didFinishPreparingPluginPayload:(id)a4;
- (void)embeddedRichLinkView:(id)a3 didSelectInteractionType:(int64_t)a4;
- (void)embeddedRichLinkView:(id)a3 requestedTransitionToSize:(CGSize)a4;
- (void)presentCustomizationPicker;
- (void)setDownscaleMultiplier:(double)a3;
@end

@implementation CKLinkPreviewTextAttachment

- (double)downscaleMultiplier
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_downscaleMultiplier;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setDownscaleMultiplier:(double)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_downscaleMultiplier;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (id)viewProviderForParentView:(id)a3 location:(id)a4 textContainer:(id)a5
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a5;
  v11 = self;
  sub_190B9AC60(a3, a4, a5);
  v13 = v12;

  swift_unknownObjectRelease();

  return v13;
}

- (id)imageForBounds:(CGRect)a3 textContainer:(id)a4 characterIndex:(int64_t)a5
{
  v6 = a4;
  v7 = self;
  v8 = sub_190B9B9E0();

  return v8;
}

- (id)makeThrowAnimationSnapshotView
{
  v2 = self;
  v3 = sub_190AF4994();

  return v3;
}

- (_TtC7ChatKit27CKLinkPreviewTextAttachment)initWithData:(id)a3 ofType:(id)a4
{
  if (a3)
  {
    v4 = a3;
    v5 = sub_190D51670();
    sub_19083B6D4(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)embeddedRichLinkView:(id)a3 didSelectInteractionType:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_190B9BC24(a4);
}

- (void)embeddedRichLinkView:(id)a3 didFinishPreparingPluginPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_190B9BD60(v7);
}

- (void)embeddedRichLinkView:(id)a3 requestedTransitionToSize:(CGSize)a4
{
  v5 = a3;
  v6 = self;
  sub_190B9BE70();
}

- (double)maxWidthForEmbeddedRichLinkView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190B9C104();
  v7 = v6;

  return v7;
}

- (double)downscaleMultiplierForEmbeddedRichLinkView:(id)a3
{
  v4 = OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_downscaleMultiplier;
  swift_beginAccess();
  return *(&self->super.super.isa + v4);
}

- (BOOL)supportsCustomizationForEmbeddedRichLinkView:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = [Strong supportsCustomizationForLinkPreviewTextAttachment_];
    swift_unknownObjectRelease();
    LOBYTE(Strong) = v5;
  }

  return Strong;
}

- (BOOL)canPresentCustomizationPicker
{
  v2 = self;
  v3 = sub_190AF6424();

  return v3 & 1;
}

- (void)presentCustomizationPicker
{
  v2 = self;
  sub_190AF66D4();
}

@end