@interface IMFilterHelpers
+ (id)filterModeStringValue:(unint64_t)value;
+ (int64_t)filterModeCombinedValue:(unint64_t)value;
+ (unint64_t)defaultPrimaryFilterMode;
+ (void)invalidateDefaultPrimaryFilterModeCache;
+ (void)registerForFiltrationSettingChangeNotifications;
- (IMFilterHelpers)init;
@end

@implementation IMFilterHelpers

+ (id)filterModeStringValue:(unint64_t)value
{
  IMConversationListFilterMode.stringValue.getter(value);
  v3 = sub_1A88C82A8();

  return v3;
}

+ (int64_t)filterModeCombinedValue:(unint64_t)value
{
  v4 = IMConversationListFilterMode.action.getter(value);
  v5 = IMConversationListFilterMode.subAction.getter(value);
  result = IMAppendedFilterMode(v4, v5);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

+ (void)registerForFiltrationSettingChangeNotifications
{
  if (qword_1ED8C8AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_1A88BB8CC(v2);
}

+ (void)invalidateDefaultPrimaryFilterModeCache
{
  if (qword_1ED8C8AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1ED8CA4B8;

  os_unfair_lock_lock((v2 + 36));
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;
  sub_1A88BB750();
  os_unfair_lock_unlock((v2 + 36));
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter postNotificationName:@"IMDefaultPrimaryConversationListFilterModeChangedNotification" object:0];
}

+ (unint64_t)defaultPrimaryFilterMode
{
  if (qword_1ED8C8AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_1A88BBA94(qword_1ED8CA4B8);
  swift_endAccess();
  return v2;
}

- (IMFilterHelpers)init
{
  v3.receiver = self;
  v3.super_class = IMFilterHelpers;
  return [(IMFilterHelpers *)&v3 init];
}

@end