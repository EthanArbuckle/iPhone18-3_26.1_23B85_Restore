@interface OrgLukhnosPortmobileInvokeMethodHandles
+ (id)publicLookup;
+ (void)initialize;
@end

@implementation OrgLukhnosPortmobileInvokeMethodHandles

+ (id)publicLookup
{
  if ((atomic_load_explicit(OrgLukhnosPortmobileInvokeMethodHandles__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001068AC();
  }

  return OrgLukhnosPortmobileInvokeMethodHandles_publicLookupInstance_;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&OrgLukhnosPortmobileInvokeMethodHandles_publicLookupInstance_, [OrgLukhnosPortmobileInvokeMethodHandles_Lookup alloc]);
    atomic_store(1u, OrgLukhnosPortmobileInvokeMethodHandles__initialized);
  }
}

@end