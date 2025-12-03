@interface SEPUtils
+ (id)dataFromACL:(__SecAccessControl *)l;
@end

@implementation SEPUtils

+ (id)dataFromACL:(__SecAccessControl *)l
{
  v3 = SecAccessControlCopyData();

  return v3;
}

@end