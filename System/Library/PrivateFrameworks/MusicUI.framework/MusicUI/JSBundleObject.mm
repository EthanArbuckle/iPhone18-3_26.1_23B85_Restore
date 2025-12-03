@interface JSBundleObject
- (NSDictionary)manifest;
- (id)loadResource:(id)resource;
@end

@implementation JSBundleObject

- (NSDictionary)manifest
{
  sub_2166EF7F8();
  v2 = sub_21700E344();

  return v2;
}

- (id)loadResource:(id)resource
{
  sub_21700E514();
  selfCopy = self;
  v5 = sub_216C38F88();

  return v5;
}

@end