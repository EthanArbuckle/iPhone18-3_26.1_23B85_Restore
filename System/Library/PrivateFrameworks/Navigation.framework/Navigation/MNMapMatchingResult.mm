@interface MNMapMatchingResult
- (MNMapMatchingResult)init;
- (NSUUID)routeID;
@end

@implementation MNMapMatchingResult

- (NSUUID)routeID
{
  v3 = sub_1D3276D70();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___MNMapMatchingResult_routeID, v3);
  v8 = sub_1D3276D40();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (MNMapMatchingResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end