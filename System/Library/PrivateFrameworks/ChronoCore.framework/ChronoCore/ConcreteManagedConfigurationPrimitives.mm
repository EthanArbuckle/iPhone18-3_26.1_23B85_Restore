@interface ConcreteManagedConfigurationPrimitives
- (_TtC10ChronoCore38ConcreteManagedConfigurationPrimitives)init;
- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)a3 userInfo:(id)a4;
@end

@implementation ConcreteManagedConfigurationPrimitives

- (_TtC10ChronoCore38ConcreteManagedConfigurationPrimitives)init
{
  ObjectType = swift_getObjectType();
  *&self->delegate[OBJC_IVAR____TtC10ChronoCore38ConcreteManagedConfigurationPrimitives_delegate] = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v4 = [(ConcreteManagedConfigurationPrimitives *)&v9 init];
  v5 = objc_opt_self();
  v6 = v4;
  result = [v5 sharedConnection];
  if (result)
  {
    v8 = result;
    [(ConcreteManagedConfigurationPrimitives *)result registerObserver:v6];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)a3 userInfo:(id)a4
{
  if (a4)
  {
    sub_224DAECE8();
  }

  v6 = a3;
  v7 = self;
  sub_224C4E7FC();
}

@end