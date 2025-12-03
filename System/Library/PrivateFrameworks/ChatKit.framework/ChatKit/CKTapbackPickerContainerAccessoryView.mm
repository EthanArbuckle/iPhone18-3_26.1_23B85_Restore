@interface CKTapbackPickerContainerAccessoryView
- (CGPoint)attachmentOffsetWithReferenceFrame:(CGRect)frame;
- (CKTapbackPickerContainerAccessoryView)initWithFrame:(CGRect)frame configuration:(id *)configuration;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)init:(id)init layoutBounds:(CGRect)bounds delegate:(id)delegate;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated;
@end

@implementation CKTapbackPickerContainerAccessoryView

- (id)init:(id)init layoutBounds:(CGRect)bounds delegate:(id)delegate
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  initCopy = init;
  swift_unknownObjectRetain();
  return TapbackPickerContainerAccessoryView.init(_:layoutBounds:delegate:)(initCopy, delegate, x, y, width, height);
}

- (void)setVisible:(BOOL)visible animated:(BOOL)animated
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR___CKTapbackPickerContainerAccessoryView_visible) != visible)
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR___CKTapbackPickerContainerAccessoryView_visible) = visible;
    selfCopy = self;
    if (visible)
    {
      sub_19092CB50();
    }

    else
    {
      sub_19092D1EC();
    }
  }
}

- (CGPoint)attachmentOffsetWithReferenceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  v8 = sub_190CB0178(x, y, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v4 = [*(&self->super.super.super.super.isa + OBJC_IVAR___CKTapbackPickerContainerAccessoryView_pickerBalloonParentView) hitTest:event withEvent:{test.x, test.y}];

  return v4;
}

- (CKTapbackPickerContainerAccessoryView)initWithFrame:(CGRect)frame configuration:(id *)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end