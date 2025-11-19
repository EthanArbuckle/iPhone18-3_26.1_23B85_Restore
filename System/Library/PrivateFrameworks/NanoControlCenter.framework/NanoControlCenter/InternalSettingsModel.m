@interface InternalSettingsModel
- (_TtC17NanoControlCenter21InternalSettingsModel)init;
@end

@implementation InternalSettingsModel

- (_TtC17NanoControlCenter21InternalSettingsModel)init
{
  ObjectType = swift_getObjectType();
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&self->observer[OBJC_IVAR____TtC17NanoControlCenter21InternalSettingsModel_observer] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = ObjectType;
  v4 = [(InternalSettingsModel *)&v6 init];

  return v4;
}

@end