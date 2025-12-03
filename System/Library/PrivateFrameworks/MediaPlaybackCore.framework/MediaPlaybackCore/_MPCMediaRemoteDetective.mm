@interface _MPCMediaRemoteDetective
- (_MPCMediaRemoteDetective)initWithPublisher:(id)publisher;
- (void)investigateTimeoutForEvent:(MPRemoteCommandEvent *)event completion:(id)completion;
@end

@implementation _MPCMediaRemoteDetective

- (_MPCMediaRemoteDetective)initWithPublisher:(id)publisher
{
  swift_unknownObjectRetain();
  sub_1C6017390();
  swift_unknownObjectRelease();
  sub_1C5C6BF64(&v4);
  return result;
}

- (void)investigateTimeoutForEvent:(MPRemoteCommandEvent *)event completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = event;
  v7[3] = v6;
  v7[4] = self;
  eventCopy = event;
  selfCopy = self;

  sub_1C5E3A9D0(&unk_1C60445D8, v7);
}

@end