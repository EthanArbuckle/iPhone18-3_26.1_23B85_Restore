@interface CKCloudSyncNavBarStatusView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)scheduleTransitionFromTextToProgressBarIfNeeded;
- (void)setProgress:(double)a3 animated:(BOOL)a4;
- (void)setProgressText:(id)a3;
- (void)transitionToStatusTextIfNeeded;
@end

@implementation CKCloudSyncNavBarStatusView

- (void)layoutSubviews
{
  v2 = self;
  sub_190CD3170();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_syncStatusLabel);
  v6 = self;
  [v5 sizeThatFits_];
  v8 = v7;
  v10 = v9;
  LODWORD(v5) = *(&v6->super.super.super.isa + OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_placement);

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

- (void)setProgress:(double)a3 animated:(BOOL)a4
{
  if (a4)
  {
    *&a4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_hasFinishedFirstLayoutPass);
  }

  *&a3 = a3;
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit27CKCloudSyncNavBarStatusView_progressView) setProgress:a4 animated:a3];
}

- (void)setProgressText:(id)a3
{
  v4 = sub_190D56F10();
  v6 = v5;
  v7 = self;
  sub_190CD3690(v4, v6);
}

- (void)scheduleTransitionFromTextToProgressBarIfNeeded
{
  v2 = self;
  sub_190CD382C();
}

- (void)transitionToStatusTextIfNeeded
{
  v2 = self;
  sub_190CD3E0C();
}

@end