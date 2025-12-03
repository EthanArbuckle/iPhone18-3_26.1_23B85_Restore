@interface IMDFileEventBroadcaster
+ (id)sharedInstance;
- (IMDFileEventBroadcaster)init;
- (void)observeChangesInPath:(id)path;
- (void)stopObserving;
@end

@implementation IMDFileEventBroadcaster

+ (id)sharedInstance
{
  if (qword_28141F138 != -1)
  {
    swift_once();
  }

  v3 = qword_28141F140;

  return v3;
}

- (void)observeChangesInPath:(id)path
{
  v4 = sub_22B7DB6A8();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  IMDFileEventBroadcaster.observeChanges(in:)(v8);
}

- (void)stopObserving
{
  if (*(&self->super.isa + OBJC_IVAR___IMDFileEventBroadcaster_fileEventStream))
  {
    selfCopy = self;

    FileEventStream.stop()();
  }
}

- (IMDFileEventBroadcaster)init
{
  *(&self->super.isa + OBJC_IVAR___IMDFileEventBroadcaster_fileEventStream) = 0;
  v3.receiver = self;
  v3.super_class = IMDFileEventBroadcaster;
  return [(IMDFileEventBroadcaster *)&v3 init];
}

@end