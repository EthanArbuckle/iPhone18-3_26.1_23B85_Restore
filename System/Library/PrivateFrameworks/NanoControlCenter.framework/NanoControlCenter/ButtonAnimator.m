@interface ButtonAnimator
- (_TtC17NanoControlCenter14ButtonAnimator)init;
@end

@implementation ButtonAnimator

- (_TtC17NanoControlCenter14ButtonAnimator)init
{
  ObjectType = swift_getObjectType();
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  v4 = [(ButtonAnimator *)&v6 init];

  return v4;
}

@end