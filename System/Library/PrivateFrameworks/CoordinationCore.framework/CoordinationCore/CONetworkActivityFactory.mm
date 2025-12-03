@interface CONetworkActivityFactory
+ (id)activityWithLabel:(unsigned int)label parentActivity:(id)activity;
@end

@implementation CONetworkActivityFactory

+ (id)activityWithLabel:(unsigned int)label parentActivity:(id)activity
{
  activityCopy = activity;
  v5 = nw_activity_create();
  if (activityCopy)
  {
    nw_activity_set_parent_activity();
  }

  return v5;
}

@end