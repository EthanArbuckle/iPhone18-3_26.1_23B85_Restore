@interface PodcastsUPPConsumer
+ (NSString)identifier;
- (_TtC17MediaPlaybackCore19PodcastsUPPConsumer)initWithPlaybackEngine:(id)engine playbackPositionHandler:(id)handler;
- (void)subscribeToEventStream:(id)stream;
- (void)unsubscribeFromEventStream:(id)stream;
@end

@implementation PodcastsUPPConsumer

- (void)subscribeToEventStream:(id)stream
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5C7EE38(stream);
  swift_unknownObjectRelease();
}

+ (NSString)identifier
{
  sub_1C5C7F590();
  v2 = sub_1C6016900();

  return v2;
}

- (_TtC17MediaPlaybackCore19PodcastsUPPConsumer)initWithPlaybackEngine:(id)engine playbackPositionHandler:(id)handler
{
  v5 = _Block_copy(handler);
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

  return sub_1C5C7565C(engine, v5, v6);
}

- (void)unsubscribeFromEventStream:(id)stream
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5CD18AC();
  swift_unknownObjectRelease();
}

@end