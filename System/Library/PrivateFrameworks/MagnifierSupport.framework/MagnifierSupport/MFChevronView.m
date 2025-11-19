@interface MFChevronView
- (void)layoutSubviews;
@end

@implementation MFChevronView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(MFChevronView *)&v4 layoutSubviews];
  [v2 bounds];
  [*&v2[OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronLayer] setPosition_];
}

@end