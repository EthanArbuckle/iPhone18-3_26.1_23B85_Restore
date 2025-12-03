@interface MFActivityViewController
- (_TtC16MagnifierSupport24MFActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities;
@end

@implementation MFActivityViewController

- (_TtC16MagnifierSupport24MFActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities
{
  ObjectType = swift_getObjectType();
  if (activities)
  {
    sub_257C6CF5C();
    sub_257ECF810();
    itemsCopy = items;
    activities = sub_257ECF7F0();
  }

  else
  {
    itemsCopy2 = items;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(MFActivityViewController *)&v12 initWithActivityItems:items applicationActivities:activities];

  return v10;
}

@end