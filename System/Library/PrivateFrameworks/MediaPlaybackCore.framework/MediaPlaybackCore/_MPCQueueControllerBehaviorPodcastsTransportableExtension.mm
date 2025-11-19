@interface _MPCQueueControllerBehaviorPodcastsTransportableExtension
- (BOOL)isSupportedSessionType:(id)a3 reason:(id *)a4;
- (MPCQueueControllerSessionTypesInvalidatable)sessionTypesInvalidatable;
- (id)allKnownSessionTypes;
- (void)setSessionTypesInvalidatable:(id)a3;
@end

@implementation _MPCQueueControllerBehaviorPodcastsTransportableExtension

- (id)allKnownSessionTypes
{
  v2 = self;
  sub_1C5C6EEB8();

  type metadata accessor for MPPlaybackSessionType();
  v3 = sub_1C6016AF0();

  return v3;
}

- (BOOL)isSupportedSessionType:(id)a3 reason:(id *)a4
{
  v6 = a3;
  v7 = self;
  LOBYTE(a4) = sub_1C5C6F42C(v6, a4);

  return a4 & 1;
}

- (MPCQueueControllerSessionTypesInvalidatable)sessionTypesInvalidatable
{
  v2 = sub_1C5D2AFC8();

  return v2;
}

- (void)setSessionTypesInvalidatable:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C5D2B070(a3);
}

@end