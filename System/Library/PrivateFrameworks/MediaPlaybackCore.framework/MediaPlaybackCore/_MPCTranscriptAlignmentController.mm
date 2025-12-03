@interface _MPCTranscriptAlignmentController
- (BOOL)isEnabled;
- (MPCPlaybackEngineEventConsumer)eventConsumer;
- (NSArray)transcriptAlignments;
- (void)resolveWith:(double)with referenceTime:(double)time completionHandler:(id)handler;
- (void)startProcessing;
@end

@implementation _MPCTranscriptAlignmentController

- (MPCPlaybackEngineEventConsumer)eventConsumer
{
  v2 = sub_1C5C76624();

  return v2;
}

- (NSArray)transcriptAlignments
{
  selfCopy = self;
  v3 = sub_1C5CE47DC();

  if (v3)
  {
    sub_1C5CE5748();
    v4 = sub_1C6016AF0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEnabled
{
  selfCopy = self;
  v3 = sub_1C5CE4880();

  return v3 & 1;
}

- (void)startProcessing
{
  selfCopy = self;
  sub_1C5CE48F8();
}

- (void)resolveWith:(double)with referenceTime:(double)time completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = with;
  *(v9 + 24) = time;
  *(v9 + 32) = v8;
  *(v9 + 40) = self;
  selfCopy = self;

  sub_1C5E3A9D0(&unk_1C6036488, v9);
}

@end