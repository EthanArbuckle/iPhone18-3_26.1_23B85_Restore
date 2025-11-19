@interface CAMViewfinderTipManager
+ (id)stylesTipViewControllerWithSourceItem:(id)a3;
- (CAMViewfinderTipManager)init;
@end

@implementation CAMViewfinderTipManager

+ (id)stylesTipViewControllerWithSourceItem:(id)a3
{
  v3 = a3;
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