@interface NFGFaceSnapshotRefresher
- (BOOL)cancelRefreshingWithError:(id *)a3;
- (BOOL)startRefreshingWithError:(id *)a3;
- (NFGFaceSnapshotRefresher)init;
@end

@implementation NFGFaceSnapshotRefresher

- (BOOL)startRefreshingWithError:(id *)a3
{
  v3 = (self + OBJC_IVAR___NFGFaceSnapshotRefresher_internalState);
  v4 = self;
  os_unfair_lock_lock(v3);
  sub_25B08E23C(&v3[2], v4, &v6);
  os_unfair_lock_unlock(v3);

  return 1;
}

- (BOOL)cancelRefreshingWithError:(id *)a3
{
  v3 = self;
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