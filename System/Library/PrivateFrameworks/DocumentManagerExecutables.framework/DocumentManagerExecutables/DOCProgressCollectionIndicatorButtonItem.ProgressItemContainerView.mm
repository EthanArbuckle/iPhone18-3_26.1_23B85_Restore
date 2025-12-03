@interface DOCProgressCollectionIndicatorButtonItem.ProgressItemContainerView
- (CGSize)intrinsicContentSize;
- (_TtCC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemP33_B63CAF900B351F60B6673B49E171E6A025ProgressItemContainerView)initWithFrame:(CGRect)frame;
@end

@implementation DOCProgressCollectionIndicatorButtonItem.ProgressItemContainerView

- (CGSize)intrinsicContentSize
{
  if (one-time initialization token for metrics != -1)
  {
    swift_once();
  }

  v2 = *&static DOCProgressCollectionIndicatorButtonItem.metrics;
  v3 = *&qword_27EEF16C0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtCC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemP33_B63CAF900B351F60B6673B49E171E6A025ProgressItemContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC26DocumentManagerExecutables40DOCProgressCollectionIndicatorButtonItemP33_B63CAF900B351F60B6673B49E171E6A025ProgressItemContainerView_isActivePopoverSource) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCProgressCollectionIndicatorButtonItem.ProgressItemContainerView();
  return [(DOCView *)&v8 initWithFrame:x, y, width, height];
}

@end