@interface CHUISLiveSnapshotView
- (void)setSnapshotView:(id)a3;
@end

@implementation CHUISLiveSnapshotView

- (void)setSnapshotView:(id)a3
{
  v5 = a3;
  snapshotView = self->_snapshotView;
  v7 = v5;
  if (snapshotView != v5)
  {
    [(UIView *)snapshotView removeFromSuperview];
    objc_storeStrong(&self->_snapshotView, a3);
    if (v7)
    {
      [(CHUISLiveSnapshotView *)self addSubview:v7];
    }
  }
}

@end