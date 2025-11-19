@interface CRFileSyncPresenter
- (NSURL)presentedItemURL;
- (_TtC9Coherence19CRFileSyncPresenter)init;
- (void)presentedItemDidChange;
- (void)presentedItemDidGainVersion:(id)a3;
@end

@implementation CRFileSyncPresenter

- (NSURL)presentedItemURL
{
  v3 = sub_1AE23BDDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, self + OBJC_IVAR____TtC9Coherence19CRFileSyncPresenter_fileURL, v3, v6);
  v9 = sub_1AE23BD1C();
  (*(v4 + 8))(v8, v3);

  return v9;
}

- (void)presentedItemDidChange
{
  v2 = self;
  sub_1AE2183A0();
}

- (void)presentedItemDidGainVersion:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1AE218580(v4);
}

- (_TtC9Coherence19CRFileSyncPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end