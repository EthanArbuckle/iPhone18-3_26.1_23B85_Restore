@interface CPCarPlayObserver
- (_TtC14CopresenceCore17CPCarPlayObserver)init;
- (void)cancelledConnectionAttemptOnTransport:(unint64_t)a3;
- (void)dealloc;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
- (void)startedConnectionAttemptOnTransport:(unint64_t)a3;
@end

@implementation CPCarPlayObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_sessionStatus);
  v3 = self;
  [v2 removeSessionObserver_];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for CPCarPlayObserver();
  [(CPCarPlayObserver *)&v4 dealloc];
}

- (_TtC14CopresenceCore17CPCarPlayObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sessionDidConnect:(id)a3
{
  v4 = a3;
  v5 = self;
  CPCarPlayObserver.sessionDidConnect(_:)(v4);
}

- (void)sessionDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  CPCarPlayObserver.sessionDidDisconnect(_:)(v4);
}

- (void)startedConnectionAttemptOnTransport:(unint64_t)a3
{
  v4 = self;
  CPCarPlayObserver.startedConnectionAttempt(on:)(a3);
}

- (void)cancelledConnectionAttemptOnTransport:(unint64_t)a3
{
  v4 = self;
  CPCarPlayObserver.cancelledConnectionAttempt(on:)(a3);
}

@end