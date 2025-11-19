@interface DebugFormatSnapshotCanvasView
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)doDepthChangedWithSender:(id)a3;
- (void)doHiddenChangedWithSender:(id)a3;
- (void)doPerspectiveWithSender:(id)a3;
- (void)doRotateWithGesture:(id)a3;
- (void)doTranslateWithGesture:(id)a3;
- (void)doZoomWithGesture:(id)a3;
- (void)layoutSubviews;
@end

@implementation DebugFormatSnapshotCanvasView

- (void)layoutSubviews
{
  v2 = self;
  sub_1D71F70DC();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_1D71F725C(a4, x, y);

  return v10;
}

- (void)doRotateWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D71F7F68(v4);
}

- (void)doTranslateWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D71F8138(v4);
}

- (void)doZoomWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D71F82B4(v4);
}

- (void)doPerspectiveWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D71F8424(v4);
}

- (void)doDepthChangedWithSender:(id)a3
{
  v3 = self;
  sub_1D71F650C();
}

- (void)doHiddenChangedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D71F8714(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1D71F89D8();

  return v9 & 1;
}

@end