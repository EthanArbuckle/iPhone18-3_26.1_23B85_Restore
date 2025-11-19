@interface ObjectGroupManager
+ (id)storageGroupsForObjects:(id)a3;
+ (id)tableChairGroupsForObjects:(id)a3;
@end

@implementation ObjectGroupManager

+ (id)storageGroupsForObjects:(id)a3
{
  v3 = ou_object_group::groupStorage(a3);

  return v3;
}

+ (id)tableChairGroupsForObjects:(id)a3
{
  v3 = ou_object_group::groupTableChair(a3);

  return v3;
}

@end