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
  v4 = [*&v2[OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_containerView] layer];
  [*&v2[v3] bounds];
  [v4 setCornerRadius_];
}

- (NSString)largeContentTitle
{
  v2 = self;
  sub_257DA3CC8();

  v3 = sub_257ECF4C0();

  return v3;
}

- (UIImage)largeContentImage
{
  v2 = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport19ViewSnapshotsButton_icon) image];

  return v2;
}

@end