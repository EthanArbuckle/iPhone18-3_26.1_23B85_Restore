@interface NowPlayingActivityViewController
- (_TtC12NewsArticles32NowPlayingActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4;
@end

@implementation NowPlayingActivityViewController

- (_TtC12NewsArticles32NowPlayingActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_1D7A000E8();
    sub_1D7D3063C();
    v8 = a3;
    a4 = sub_1D7D3062C();
  }

  else
  {
    v9 = a3;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(NowPlayingActivityViewController *)&v12 initWithActivityItems:a3 applicationActivities:a4];

  return v10;
}

@end