@interface WindowPropertiesReader.Reader
- (_TtCV12DrawingBoard22WindowPropertiesReader6Reader)initWithCoder:(id)coder;
- (_TtCV12DrawingBoard22WindowPropertiesReader6Reader)initWithNibName:(id)name bundle:(id)bundle;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
@end

@implementation WindowPropertiesReader.Reader

- (_TtCV12DrawingBoard22WindowPropertiesReader6Reader)initWithCoder:(id)coder
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

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  windowCopy = window;
  selfCopy = self;
  sub_249D71598(window);
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
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

  selfCopy = self;
  sub_249D7079C();
}

- (_TtCV12DrawingBoard22WindowPropertiesReader6Reader)initWithNibName:(id)name bundle:(id)bundle
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