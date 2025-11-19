@interface SEPUtils
+ (id)dataFromACL:(__SecAccessControl *)a3;
@end

@implementation SEPUtils

+ (id)dataFromACL:(__SecAccessControl *)a3
{
  v3 = SecAccessControlCopyData();

  return v3;
}

@end