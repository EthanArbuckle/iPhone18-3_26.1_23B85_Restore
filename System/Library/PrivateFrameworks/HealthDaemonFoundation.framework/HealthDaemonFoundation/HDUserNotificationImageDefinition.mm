@interface HDUserNotificationImageDefinition
- (_TtC22HealthDaemonFoundation33HDUserNotificationImageDefinition)init;
- (_TtC22HealthDaemonFoundation33HDUserNotificationImageDefinition)initWithSystemColorName:(id)name systemImageName:(id)imageName;
@end

@implementation HDUserNotificationImageDefinition

- (_TtC22HealthDaemonFoundation33HDUserNotificationImageDefinition)initWithSystemColorName:(id)name systemImageName:(id)imageName
{
  v5 = sub_2515BB8EC();
  v7 = v6;
  v8 = sub_2515BB8EC();
  v9 = (self + OBJC_IVAR____TtC22HealthDaemonFoundation33HDUserNotificationImageDefinition_systemColorName);
  *v9 = v5;
  v9[1] = v7;
  v10 = (self + OBJC_IVAR____TtC22HealthDaemonFoundation33HDUserNotificationImageDefinition_systemImageName);
  *v10 = v8;
  v10[1] = v11;
  v13.receiver = self;
  v13.super_class = type metadata accessor for HDUserNotificationImageDefinition();
  return [(HDUserNotificationImageDefinition *)&v13 init];
}

- (_TtC22HealthDaemonFoundation33HDUserNotificationImageDefinition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end