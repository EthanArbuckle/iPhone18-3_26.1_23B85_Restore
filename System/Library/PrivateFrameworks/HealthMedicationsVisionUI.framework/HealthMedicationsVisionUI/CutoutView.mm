@interface CutoutView
- (CGRect)bounds;
- (CGRect)frame;
- (_TtC25HealthMedicationsVisionUI10CutoutView)initWithCoder:(id)coder;
@end

@implementation CutoutView

- (_TtC25HealthMedicationsVisionUI10CutoutView)initWithCoder:(id)coder
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2518D34D4();
}

- (CGRect)bounds
{
  v2 = sub_2518CCBBC(self, a2, 182, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)frame
{
  v2 = sub_2518CCBBC(self, a2, 194, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end