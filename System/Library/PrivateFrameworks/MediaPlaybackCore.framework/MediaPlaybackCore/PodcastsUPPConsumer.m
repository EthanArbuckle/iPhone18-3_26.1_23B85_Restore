@interface PodcastsUPPConsumer
+ (NSString)identifier;
- (_TtC17MediaPlaybackCore19PodcastsUPPConsumer)initWithPlaybackEngine:(id)a3 playbackPositionHandler:(id)a4;
- (void)subscribeToEventStream:(id)a3;
- (void)unsubscribeFromEventStream:(id)a3;
@end

@implementation PodcastsUPPConsumer

- (void)subscribeToEventStream:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C5C7EE38(a3);
  swift_unknownObjectRelease();
}

+ (NSString)identifier
{
  sub_1C5C7F590();
  v2 = sub_1C6016900();

  return v2;
}

- (_TtC17MediaPlaybackCore19PodcastsUPPConsumer)initWithPlaybackEngine:(id)a3 playbackPositionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_1C5CD4510;
  }

  else
  {
    v6 = 0;
  }

  return sub_1C5C7565C(a3, v5, v6);
}

- (void)unsubscribeFromEventStream:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1C5CD18AC();
  swift_unknownObjectRelease();
}

@end