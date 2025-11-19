@interface WindowPropertiesReader.Reader
- (_TtCV12DrawingBoard22WindowPropertiesReader6Reader)initWithCoder:(id)a3;
- (_TtCV12DrawingBoard22WindowPropertiesReader6Reader)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
@end

@implementation WindowPropertiesReader.Reader

- (_TtCV12DrawingBoard22WindowPropertiesReader6Reader)initWithCoder:(id)a3
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_249D735B4();
  __break(1u);
  return result;
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a3;
  v7 = self;
  sub_249D71598(a3);
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self;
  sub_249D71910();
}

- (void)viewDidLayoutSubviews
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_249D7079C();
}

- (_TtCV12DrawingBoard22WindowPropertiesReader6Reader)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end