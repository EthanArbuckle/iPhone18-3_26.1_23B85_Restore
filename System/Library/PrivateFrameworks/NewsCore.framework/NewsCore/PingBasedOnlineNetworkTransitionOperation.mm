@interface PingBasedOnlineNetworkTransitionOperation
- (BOOL)canRetryWithError:(id)error retryAfter:(id *)after;
- (_TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation)init;
- (void)cancel;
- (void)performOperation;
- (void)resetForRetry;
@end

@implementation PingBasedOnlineNetworkTransitionOperation

- (void)performOperation
{
  selfCopy = self;
  sub_1B64B0E24();
}

- (BOOL)canRetryWithError:(id)error retryAfter:(id *)after
{
  errorCopy = error;
  selfCopy = self;
  LOBYTE(after) = sub_1B64B25A0(after);

  return after & 1;
}

- (void)resetForRetry
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probeLock);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 24));
  if (*(v2 + 16))
  {
    sub_1B67D903C();
  }

  *(v2 + 16) = 0;
  os_unfair_lock_unlock((v2 + 24));
}

- (void)cancel
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probeLock);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 24));
  if (*(v2 + 16))
  {
    sub_1B67D903C();
  }

  os_unfair_lock_unlock((v2 + 24));
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for PingBasedOnlineNetworkTransitionOperation();
  [(FCOperation *)&v4 cancel];
}

- (_TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end