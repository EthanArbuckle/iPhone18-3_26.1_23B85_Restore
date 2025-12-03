@interface CPCarPlayObserver
- (_TtC14CopresenceCore17CPCarPlayObserver)init;
- (void)cancelledConnectionAttemptOnTransport:(unint64_t)transport;
- (void)dealloc;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)startedConnectionAttemptOnTransport:(unint64_t)transport;
@end

@implementation CPCarPlayObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_sessionStatus);
  selfCopy = self;
  [v2 removeSessionObserver_];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for CPCarPlayObserver();
  [(CPCarPlayObserver *)&v4 dealloc];
}

- (_TtC14CopresenceCore17CPCarPlayObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  selfCopy = self;
  CPCarPlayObserver.sessionDidConnect(_:)(connectCopy);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  CPCarPlayObserver.sessionDidDisconnect(_:)(disconnectCopy);
}

- (void)startedConnectionAttemptOnTransport:(unint64_t)transport
{
  selfCopy = self;
  CPCarPlayObserver.startedConnectionAttempt(on:)(transport);
}

- (void)cancelledConnectionAttemptOnTransport:(unint64_t)transport
{
  selfCopy = self;
  CPCarPlayObserver.cancelledConnectionAttempt(on:)(transport);
}

@end