@interface SUUIStopPageViewController.StopPageLockup
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup)initWithFrame:(CGRect)a3;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)layoutSubviews;
- (void)lockupView:(id)a3 appStateDidChange:(id)a4;
- (void)lockupViewDidFinishRequest:(id)a3;
@end

@implementation SUUIStopPageViewController.StopPageLockup

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_259F8E650(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_259F8E834();
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  if (a4)
  {
    [*(&self->super.super.super.isa + OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_imageView) setImage_];
  }
}

- (void)lockupViewDidFinishRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_259F91E60();
}

- (void)lockupView:(id)a3 appStateDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_259F921F0(v7);
}

- (_TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end