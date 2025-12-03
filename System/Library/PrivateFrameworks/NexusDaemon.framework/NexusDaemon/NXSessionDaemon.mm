@interface NXSessionDaemon
- (NSString)description;
- (_TtC11NexusDaemon15NXSessionDaemon)init;
- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error;
- (void)sessionStarted:(id)started;
@end

@implementation NXSessionDaemon

- (NSString)description
{
  selfCopy = self;
  v3 = sub_25C494B98();
  MEMORY[0x25F887A50](v3);

  v4 = sub_25C4C8540();

  return v4;
}

- (void)sessionStarted:(id)started
{
  startedCopy = started;
  selfCopy = self;
  sub_25C49D6E0(startedCopy);
}

- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error
{
  endedCopy = ended;
  selfCopy = self;
  errorCopy = error;
  sub_25C49D9F0(endedCopy, reason, error);
}

- (_TtC11NexusDaemon15NXSessionDaemon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end