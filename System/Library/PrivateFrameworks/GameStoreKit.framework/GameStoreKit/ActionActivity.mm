@interface ActionActivity
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (_TtC12GameStoreKitP33_E7804E10B2D4DD125D81AC40A3ED5B7214ActionActivity)init;
- (id)_systemImageName;
- (void)performActivity;
@end

@implementation ActionActivity

- (NSString)activityType
{
  selfCopy = self;
  v3 = sub_24F92B098();

  return v3;
}

- (NSString)activityTitle
{

  v2 = sub_24F92B098();

  return v2;
}

- (UIImage)activityImage
{
  selfCopy = self;
  v3 = sub_24F8BA920();

  return v3;
}

- (id)_systemImageName
{
  selfCopy = self;
  sub_24F8BA9EC();
  v4 = v3;

  if (v4)
  {
    v5 = sub_24F92B098();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)performActivity
{
  selfCopy = self;
  sub_24F8BAD6C();
}

- (_TtC12GameStoreKitP33_E7804E10B2D4DD125D81AC40A3ED5B7214ActionActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end