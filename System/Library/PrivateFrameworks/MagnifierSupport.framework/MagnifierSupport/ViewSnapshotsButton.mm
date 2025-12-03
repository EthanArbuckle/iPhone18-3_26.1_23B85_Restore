@interface ViewSnapshotsButton
- (NSString)largeContentTitle;
- (UIImage)largeContentImage;
- (void)layoutSubviews;
@end

@implementation ViewSnapshotsButton

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(ViewSnapshotsButton *)&v6 layoutSubviews];
  v3 = OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_containerView;
  layer = [*&v2[OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_containerView] layer];
  [*&v2[v3] bounds];
  [layer setCornerRadius_];
}

- (NSString)largeContentTitle
{
  selfCopy = self;
  sub_257DA3CC8();

  v3 = sub_257ECF4C0();

  return v3;
}

- (UIImage)largeContentImage
{
  image = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_icon) image];

  return image;
}

@end