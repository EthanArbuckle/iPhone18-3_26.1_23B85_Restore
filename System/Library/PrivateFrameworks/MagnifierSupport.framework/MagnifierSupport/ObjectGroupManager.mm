@interface ObjectGroupManager
+ (id)storageGroupsForObjects:(id)objects;
+ (id)tableChairGroupsForObjects:(id)objects;
@end

@implementation ObjectGroupManager

+ (id)storageGroupsForObjects:(id)objects
{
  v3 = ou_object_group::groupStorage(objects);

  return v3;
}

+ (id)tableChairGroupsForObjects:(id)objects
{
  v3 = ou_object_group::groupTableChair(objects);

  return v3;
}

@end