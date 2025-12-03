@interface CHUISLiveSnapshotView
- (void)setSnapshotView:(id)view;
@end

@implementation CHUISLiveSnapshotView

- (void)setSnapshotView:(id)view
{
  viewCopy = view;
  snapshotView = self->_snapshotView;
  v7 = viewCopy;
  if (snapshotView != viewCopy)
  {
    [(UIView *)snapshotView removeFromSuperview];
    objc_storeStrong(&self->_snapshotView, view);
    if (v7)
    {
      [(CHUISLiveSnapshotView *)self addSubview:v7];
    }
  }
}

@end