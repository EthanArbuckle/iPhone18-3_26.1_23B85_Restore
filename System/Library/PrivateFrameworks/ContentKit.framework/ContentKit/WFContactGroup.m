@interface WFContactGroup
+ (id)allContactGroups;
+ (id)contactGroupWithName:(id)a3;
@end

@implementation WFContactGroup

+ (id)contactGroupWithName:(id)a3
{
  v4 = a3;
  v5 = [a1 allContactGroups];
  v6 = [v5 objectMatchingKey:@"name" value:v4];

  return v6;
}

+ (id)allContactGroups
{
  v2 = [a1 preferredConcreteSubclass];

  return [v2 allContactGroups];
}

@end