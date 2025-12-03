@interface CAMViewfinderTipManager
+ (id)stylesTipViewControllerWithSourceItem:(id)item;
- (CAMViewfinderTipManager)init;
@end

@implementation CAMViewfinderTipManager

+ (id)stylesTipViewControllerWithSourceItem:(id)item
{
  itemCopy = item;
  v4 = sub_1A3989A0C();

  return v4;
}

- (CAMViewfinderTipManager)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CAMViewfinderTipManager *)&v3 init];
}

@end