@interface NXSessionDaemon
- (NSString)description;
- (_TtC11NexusDaemon15NXSessionDaemon)init;
- (void)sessionEnded:(id)a3 withReason:(unsigned int)a4 error:(id)a5;
- (void)sessionStarted:(id)a3;
@end

@implementation NXSessionDaemon

- (NSString)description
{
  v2 = self;
  v3 = sub_25C494B98();
  MEMORY[0x25F887A50](v3);

  v4 = sub_25C4C8540();

  return v4;
}

- (void)sessionStarted:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_25C49D6E0(v4);
}

- (void)sessionEnded:(id)a3 withReason:(unsigned int)a4 error:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a5;
  sub_25C49D9F0(v8, a4, a5);
}

- (_TtC11NexusDaemon15NXSessionDaemon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end