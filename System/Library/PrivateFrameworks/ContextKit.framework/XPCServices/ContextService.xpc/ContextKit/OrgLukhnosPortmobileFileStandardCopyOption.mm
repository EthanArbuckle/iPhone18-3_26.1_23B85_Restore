@interface OrgLukhnosPortmobileFileStandardCopyOption
+ (void)initialize;
@end

@implementation OrgLukhnosPortmobileFileStandardCopyOption

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&OrgLukhnosPortmobileFileStandardCopyOption_ATOMIC_MOVE_, [OrgLukhnosPortmobileFileStandardCopyOption alloc]);
    atomic_store(1u, OrgLukhnosPortmobileFileStandardCopyOption__initialized);
  }
}

@end