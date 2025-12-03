@interface _MPCQueueControllerBehaviorPodcastsTransportableExtension
- (BOOL)isSupportedSessionType:(id)type reason:(id *)reason;
- (MPCQueueControllerSessionTypesInvalidatable)sessionTypesInvalidatable;
- (id)allKnownSessionTypes;
- (void)setSessionTypesInvalidatable:(id)invalidatable;
@end

@implementation _MPCQueueControllerBehaviorPodcastsTransportableExtension

- (id)allKnownSessionTypes
{
  selfCopy = self;
  sub_1C5C6EEB8();

  type metadata accessor for MPPlaybackSessionType();
  v3 = sub_1C6016AF0();

  return v3;
}

- (BOOL)isSupportedSessionType:(id)type reason:(id *)reason
{
  typeCopy = type;
  selfCopy = self;
  LOBYTE(reason) = sub_1C5C6F42C(typeCopy, reason);

  return reason & 1;
}

- (MPCQueueControllerSessionTypesInvalidatable)sessionTypesInvalidatable
{
  v2 = sub_1C5D2AFC8();

  return v2;
}

- (void)setSessionTypesInvalidatable:(id)invalidatable
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5D2B070(invalidatable);
}

@end