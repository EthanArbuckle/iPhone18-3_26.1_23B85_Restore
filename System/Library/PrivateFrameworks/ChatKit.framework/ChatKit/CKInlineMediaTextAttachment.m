@interface CKInlineMediaTextAttachment
- (UIImage)image;
- (_TtC7ChatKit27CKInlineMediaTextAttachment)initWithCoder:(id)a3;
- (_TtC7ChatKit27CKInlineMediaTextAttachment)initWithData:(id)a3 ofType:(id)a4;
- (id)imageForBounds:(CGRect)a3 textContainer:(id)a4 characterIndex:(int64_t)a5;
- (id)viewProviderForParentView:(id)a3 location:(id)a4 textContainer:(id)a5;
- (void)inlineMediaViewDidSelectGenerativeButton:(id)a3;
- (void)setImage:(id)a3;
@end

@implementation CKInlineMediaTextAttachment

- (_TtC7ChatKit27CKInlineMediaTextAttachment)initWithCoder:(id)a3
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
  v2 = [(CKInlineMediaTextAttachment *)&v4 image];

  return v2;
}

- (void)setImage:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CKInlineMediaTextAttachment();
  v4 = a3;
  v5 = v7.receiver;
  [(CKInlineMediaTextAttachment *)&v7 setImage:v4];
  v6 = [v5 image];
  sub_190AE2DA0(v6);
}

- (id)viewProviderForParentView:(id)a3 location:(id)a4 textContainer:(id)a5
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a5;
  v11 = self;
  sub_190B6AFF0(a3, a4, a5);
  v13 = v12;

  swift_unknownObjectRelease();

  return v13;
}

- (id)imageForBounds:(CGRect)a3 textContainer:(id)a4 characterIndex:(int64_t)a5
{
  v5 = [(CKInlineMediaTextAttachment *)self image:a4];

  return v5;
}

- (_TtC7ChatKit27CKInlineMediaTextAttachment)initWithData:(id)a3 ofType:(id)a4
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

- (void)inlineMediaViewDidSelectGenerativeButton:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(&self->super.super.isa + OBJC_IVAR____TtC7ChatKit27CKInlineMediaTextAttachment_mediaObject);
    v7 = self;
    [v5 inlineMediaViewTextAttachmentDidRequestGenerativeInteraction_];

    swift_unknownObjectRelease();
  }
}

@end