@interface CKInlineMediaTextAttachment
- (UIImage)image;
- (_TtC7ChatKit27CKInlineMediaTextAttachment)initWithCoder:(id)coder;
- (_TtC7ChatKit27CKInlineMediaTextAttachment)initWithData:(id)data ofType:(id)type;
- (id)imageForBounds:(CGRect)bounds textContainer:(id)container characterIndex:(int64_t)index;
- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container;
- (void)inlineMediaViewDidSelectGenerativeButton:(id)button;
- (void)setImage:(id)image;
@end

@implementation CKInlineMediaTextAttachment

- (_TtC7ChatKit27CKInlineMediaTextAttachment)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7ChatKit27CKInlineMediaTextAttachment_viewProvider) = 0;
  v4 = OBJC_IVAR____TtC7ChatKit27CKInlineMediaTextAttachment_mediaView;
  type metadata accessor for CKInlineMediaView();
  *(&self->super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_unknownObjectWeakInit();
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (UIImage)image
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CKInlineMediaTextAttachment();
  image = [(CKInlineMediaTextAttachment *)&v4 image];

  return image;
}

- (void)setImage:(id)image
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CKInlineMediaTextAttachment();
  imageCopy = image;
  v5 = v7.receiver;
  [(CKInlineMediaTextAttachment *)&v7 setImage:imageCopy];
  image = [v5 image];
  sub_190AE2DA0(image);
}

- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container
{
  viewCopy = view;
  swift_unknownObjectRetain();
  containerCopy = container;
  selfCopy = self;
  sub_190B6AFF0(view, location, container);
  v13 = v12;

  swift_unknownObjectRelease();

  return v13;
}

- (id)imageForBounds:(CGRect)bounds textContainer:(id)container characterIndex:(int64_t)index
{
  v5 = [(CKInlineMediaTextAttachment *)self image:container];

  return v5;
}

- (_TtC7ChatKit27CKInlineMediaTextAttachment)initWithData:(id)data ofType:(id)type
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

- (void)inlineMediaViewDidSelectGenerativeButton:(id)button
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(&self->super.super.isa + OBJC_IVAR____TtC7ChatKit27CKInlineMediaTextAttachment_mediaObject);
    selfCopy = self;
    [v5 inlineMediaViewTextAttachmentDidRequestGenerativeInteraction_];

    swift_unknownObjectRelease();
  }
}

@end