@interface MSWorkoutMediaItem
- (id)copyWithZone:(void *)zone;
@end

@implementation MSWorkoutMediaItem

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_22C9ED170(v6);

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

@end