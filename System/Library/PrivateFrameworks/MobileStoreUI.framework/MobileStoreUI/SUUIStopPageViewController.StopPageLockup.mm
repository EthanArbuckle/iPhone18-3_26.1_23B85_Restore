@interface SUUIStopPageViewController.StopPageLockup
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup)initWithFrame:(CGRect)frame;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)layoutSubviews;
- (void)lockupView:(id)view appStateDidChange:(id)change;
- (void)lockupViewDidFinishRequest:(id)request;
@end

@implementation SUUIStopPageViewController.StopPageLockup

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
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
  selfCopy = self;
  sub_259F8E834();
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  if (image)
  {
    [*(&self->super.super.super.isa + OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_imageView) setImage_];
  }
}

- (void)lockupViewDidFinishRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_259F91E60();
}

- (void)lockupView:(id)view appStateDidChange:(id)change
{
  viewCopy = view;
  changeCopy = change;
  selfCopy = self;
  sub_259F921F0(changeCopy);
}

- (_TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end