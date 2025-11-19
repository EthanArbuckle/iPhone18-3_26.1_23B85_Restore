@interface GlanceFocusModel
- (_TtC17NanoControlCenter16GlanceFocusModel)init;
@end

@implementation GlanceFocusModel

- (_TtC17NanoControlCenter16GlanceFocusModel)init
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = GlanceFocusModel.init()();

  return v2;
}

@end