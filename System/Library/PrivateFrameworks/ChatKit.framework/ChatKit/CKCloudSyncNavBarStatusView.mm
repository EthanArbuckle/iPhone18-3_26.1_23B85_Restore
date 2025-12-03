@interface CKCloudSyncNavBarStatusView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)scheduleTransitionFromTextToProgressBarIfNeeded;
- (void)setProgress:(double)progress animated:(BOOL)animated;
- (void)setProgressText:(id)text;
- (void)transitionToStatusTextIfNeeded;
@end

@implementation CKCloudSyncNavBarStatusView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190CD3170();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_syncStatusLabel);
  selfCopy = self;
  [v5 sizeThatFits_];
  v8 = v7;
  v10 = v9;
  LODWORD(v5) = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_placement);

  v11 = 0.0;
  if (v5)
  {
    v11 = 2.0;
  }

  v12 = v10 + v11;
  v13 = v8;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)setProgress:(double)progress animated:(BOOL)animated
{
  if (animated)
  {
    *&animated = *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_hasFinishedFirstLayoutPass);
  }

  *&progress = progress;
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_progressView) setProgress:animated animated:progress];
}

- (void)setProgressText:(id)text
{
  v4 = sub_190D56F10();
  v6 = v5;
  selfCopy = self;
  sub_190CD3690(v4, v6);
}

- (void)scheduleTransitionFromTextToProgressBarIfNeeded
{
  selfCopy = self;
  sub_190CD382C();
}

- (void)transitionToStatusTextIfNeeded
{
  selfCopy = self;
  sub_190CD3E0C();
}

@end