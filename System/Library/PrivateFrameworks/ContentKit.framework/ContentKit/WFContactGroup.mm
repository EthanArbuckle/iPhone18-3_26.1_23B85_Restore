@interface WFContactGroup
+ (id)allContactGroups;
+ (id)contactGroupWithName:(id)name;
@end

@implementation WFContactGroup

+ (id)contactGroupWithName:(id)name
{
  nameCopy = name;
  allContactGroups = [self allContactGroups];
  v6 = [allContactGroups objectMatchingKey:@"name" value:nameCopy];

  return v6;
}

+ (id)allContactGroups
{
  preferredConcreteSubclass = [self preferredConcreteSubclass];

  return [preferredConcreteSubclass allContactGroups];
}

@end