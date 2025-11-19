@interface GlanceScrollingModel
- (_TtC17NanoControlCenter20GlanceScrollingModel)init;
@end

@implementation GlanceScrollingModel

- (_TtC17NanoControlCenter20GlanceScrollingModel)init
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end