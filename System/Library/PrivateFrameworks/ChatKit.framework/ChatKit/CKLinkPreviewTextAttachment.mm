@interface CKLinkPreviewTextAttachment
- (BOOL)canPresentCustomizationPicker;
- (BOOL)supportsCustomizationForEmbeddedRichLinkView:(id)view;
- (_TtC7ChatKit27CKLinkPreviewTextAttachment)initWithData:(id)data ofType:(id)type;
- (double)downscaleMultiplier;
- (double)downscaleMultiplierForEmbeddedRichLinkView:(id)view;
- (double)maxWidthForEmbeddedRichLinkView:(id)view;
- (id)imageForBounds:(CGRect)bounds textContainer:(id)container characterIndex:(int64_t)index;
- (id)makeThrowAnimationSnapshotView;
- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container;
- (void)embeddedRichLinkView:(id)view didFinishPreparingPluginPayload:(id)payload;
- (void)embeddedRichLinkView:(id)view didSelectInteractionType:(int64_t)type;
- (void)embeddedRichLinkView:(id)view requestedTransitionToSize:(CGSize)size;
- (void)presentCustomizationPicker;
- (void)setDownscaleMultiplier:(double)multiplier;
@end

@implementation CKLinkPreviewTextAttachment

- (double)downscaleMultiplier
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_downscaleMultiplier;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setDownscaleMultiplier:(double)multiplier
{
  v5 = OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_downscaleMultiplier;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = multiplier;
}

- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container
{
  viewCopy = view;
  swift_unknownObjectRetain();
  containerCopy = container;
  selfCopy = self;
  sub_190B9AC60(view, location, container);
  v13 = v12;

  swift_unknownObjectRelease();

  return v13;
}

- (id)imageForBounds:(CGRect)bounds textContainer:(id)container characterIndex:(int64_t)index
{
  containerCopy = container;
  selfCopy = self;
  v8 = sub_190B9B9E0();

  return v8;
}

- (id)makeThrowAnimationSnapshotView
{
  selfCopy = self;
  v3 = sub_190AF4994();

  return v3;
}

- (_TtC7ChatKit27CKLinkPreviewTextAttachment)initWithData:(id)data ofType:(id)type
{
  if (data)
  {
    dataCopy = data;
    v5 = sub_190D51670();
    sub_19083B6D4(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)embeddedRichLinkView:(id)view didSelectInteractionType:(int64_t)type
{
  viewCopy = view;
  selfCopy = self;
  sub_190B9BC24(type);
}

- (void)embeddedRichLinkView:(id)view didFinishPreparingPluginPayload:(id)payload
{
  viewCopy = view;
  payloadCopy = payload;
  selfCopy = self;
  sub_190B9BD60(payloadCopy);
}

- (void)embeddedRichLinkView:(id)view requestedTransitionToSize:(CGSize)size
{
  viewCopy = view;
  selfCopy = self;
  sub_190B9BE70();
}

- (double)maxWidthForEmbeddedRichLinkView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_190B9C104();
  v7 = v6;

  return v7;
}

- (double)downscaleMultiplierForEmbeddedRichLinkView:(id)view
{
  v4 = OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_downscaleMultiplier;
  swift_beginAccess();
  return *(&self->super.super.isa + v4);
}

- (BOOL)supportsCustomizationForEmbeddedRichLinkView:(id)view
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    supportsCustomizationForLinkPreviewTextAttachment_ = [Strong supportsCustomizationForLinkPreviewTextAttachment_];
    swift_unknownObjectRelease();
    LOBYTE(Strong) = supportsCustomizationForLinkPreviewTextAttachment_;
  }

  return Strong;
}

- (BOOL)canPresentCustomizationPicker
{
  selfCopy = self;
  v3 = sub_190AF6424();

  return v3 & 1;
}

- (void)presentCustomizationPicker
{
  selfCopy = self;
  sub_190AF66D4();
}

@end