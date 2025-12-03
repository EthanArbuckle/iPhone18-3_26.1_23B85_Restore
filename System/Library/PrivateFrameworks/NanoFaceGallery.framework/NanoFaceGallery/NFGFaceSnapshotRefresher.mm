@interface NFGFaceSnapshotRefresher
- (BOOL)cancelRefreshingWithError:(id *)error;
- (BOOL)startRefreshingWithError:(id *)error;
- (NFGFaceSnapshotRefresher)init;
@end

@implementation NFGFaceSnapshotRefresher

- (BOOL)startRefreshingWithError:(id *)error
{
  v3 = (self + OBJC_IVAR___NFGFaceSnapshotRefresher_internalState);
  selfCopy = self;
  os_unfair_lock_lock(v3);
  sub_25B08E23C(&v3[2], selfCopy, &v6);
  os_unfair_lock_unlock(v3);

  return 1;
}

- (BOOL)cancelRefreshingWithError:(id *)error
{
  selfCopy = self;
  sub_25B08ECA8();

  return 1;
}

- (NFGFaceSnapshotRefresher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end