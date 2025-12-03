@interface NowPlayingActivityViewController
- (_TtC12NewsArticles32NowPlayingActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities;
@end

@implementation NowPlayingActivityViewController

- (_TtC12NewsArticles32NowPlayingActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities
{
  ObjectType = swift_getObjectType();
  if (activities)
  {
    sub_1D7A000E8();
    sub_1D7D3063C();
    itemsCopy = items;
    activities = sub_1D7D3062C();
  }

  else
  {
    itemsCopy2 = items;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(NowPlayingActivityViewController *)&v12 initWithActivityItems:items applicationActivities:activities];

  return v10;
}

@end