@interface _MPCMediaRemoteDetective
- (_MPCMediaRemoteDetective)initWithPublisher:(id)a3;
- (void)investigateTimeoutForEvent:(MPRemoteCommandEvent *)a3 completion:(id)a4;
@end

@implementation _MPCMediaRemoteDetective

- (_MPCMediaRemoteDetective)initWithPublisher:(id)a3
{
  swift_unknownObjectRetain();
  sub_1C6017390();
  swift_unknownObjectRelease();
  sub_1C5C6BF64(&v4);
  return result;
}

- (void)investigateTimeoutForEvent:(MPRemoteCommandEvent *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1C5E3A9D0(&unk_1C60445D8, v7);
}

@end