@interface LibcoreIcuTimeZoneNames
+ (void)initialize;
@end

@implementation LibcoreIcuTimeZoneNames

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    AvailableIDs = JavaUtilTimeZone_getAvailableIDs();
    JreStrongAssign(&qword_100554C90, AvailableIDs);
    v3 = [LibcoreIcuTimeZoneNames_ZoneStringsCache alloc];
    LibcoreIcuTimeZoneNames_ZoneStringsCache_init(v3);
    JreStrongAssignAndConsume(&qword_100554C98, v3);
    v4 = qword_100554C98;
    if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000458CC();
    }

    [v4 getWithId:JavaUtilLocale_ROOT_];
    v5 = qword_100554C98;
    if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000458CC();
    }

    [v5 getWithId:JavaUtilLocale_US_];
    [qword_100554C98 getWithId:JavaUtilLocale_getDefault()];
    JreStrongAssignAndConsume(&qword_100554CA0, [LibcoreIcuTimeZoneNames__1 alloc]);
    atomic_store(1u, LibcoreIcuTimeZoneNames__initialized);
  }
}

@end