@interface CONetworkActivityFactory
+ (id)activityWithLabel:(unsigned int)a3 parentActivity:(id)a4;
@end

@implementation CONetworkActivityFactory

+ (id)activityWithLabel:(unsigned int)a3 parentActivity:(id)a4
{
  v4 = a4;
  v5 = nw_activity_create();
  if (v4)
  {
    nw_activity_set_parent_activity();
  }

  return v5;
}

@end