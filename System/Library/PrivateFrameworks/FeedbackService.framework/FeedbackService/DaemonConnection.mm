@interface DaemonConnection
- (_TtC15FeedbackService16DaemonConnection)init;
@end

@implementation DaemonConnection

- (_TtC15FeedbackService16DaemonConnection)init
{
  *(&self->super.isa + OBJC_IVAR____TtC15FeedbackService16DaemonConnection____lazy_storage___xpcConnection) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DaemonConnection();
  return [(DaemonConnection *)&v3 init];
}

@end