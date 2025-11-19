@interface CKTapbackPickerContainerAccessoryView
- (CGPoint)attachmentOffsetWithReferenceFrame:(CGRect)a3;
- (CKTapbackPickerContainerAccessoryView)initWithFrame:(CGRect)a3 configuration:(id *)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)init:(id)a3 layoutBounds:(CGRect)a4 delegate:(id)a5;
- (void)setVisible:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CKTapbackPickerContainerAccessoryView

- (id)init:(id)a3 layoutBounds:(CGRect)a4 delegate:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  swift_unknownObjectRetain();
  return TapbackPickerContainerAccessoryView.init(_:layoutBounds:delegate:)(v10, a5, x, y, width, height);
}

- (void)setVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR___CKTapbackPickerContainerAccessoryView_visible) != a3)
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR___CKTapbackPickerContainerAccessoryView_visible) = a3;
    v6 = self;
    if (a3)
    {
      sub_19092CB50();
    }

    else
    {
      sub_19092D1EC();
    }
  }
}

- (CGPoint)attachmentOffsetWithReferenceFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_190CB0178(x, y, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v4 = [*(&self->super.super.super.super.isa + OBJC_IVAR___CKTapbackPickerContainerAccessoryView_pickerBalloonParentView) hitTest:a4 withEvent:{a3.x, a3.y}];

  return v4;
}

- (CKTapbackPickerContainerAccessoryView)initWithFrame:(CGRect)a3 configuration:(id *)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end