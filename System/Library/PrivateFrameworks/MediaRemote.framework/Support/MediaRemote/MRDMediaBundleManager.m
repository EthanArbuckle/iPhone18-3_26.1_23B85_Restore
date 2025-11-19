@interface MRDMediaBundleManager
+ (MRDMediaBundleManager)shared;
- (MRDMediaBundleManager)init;
- (NSDictionary)bundles;
- (id)cachedEligibilityOf:(id)a3;
- (void)queryEligibilityOf:(NSString *)a3 completionHandler:(id)a4;
- (void)queryEligibilityOfAll:(NSArray *)a3 completionHandler:(id)a4;
- (void)setBundles:(id)a3;
@end

@implementation MRDMediaBundleManager

+ (MRDMediaBundleManager)shared
{
  if (qword_100535B10 != -1)
  {
    swift_once();
  }

  v3 = qword_1005385A8;

  return v3;
}

- (void)queryEligibilityOfAll:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = (*(*(sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100459EF8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100459F00;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_1001D34BC(0, 0, v9, &unk_100459F08, v14);
}

- (id)cachedEligibilityOf:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = sub_10000CBD8(v4, v6);

  return v8;
}

- (NSDictionary)bundles
{
  v3 = OBJC_IVAR___MRDMediaBundleManager_bundles;
  swift_beginAccess();
  v4 = *(self + v3);
  sub_100004E30();

  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)setBundles:(id)a3
{
  sub_100004E30();
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_10035750C(v4);
}

- (MRDMediaBundleManager)init
{
  *(self + OBJC_IVAR___MRDMediaBundleManager_isSupported) = 1;
  v3 = OBJC_IVAR___MRDMediaBundleManager_bundles;
  *(self + v3) = sub_10000A070(_swiftEmptyArrayStorage, &qword_100527BD0, &unk_100459F30);
  v4 = OBJC_IVAR___MRDMediaBundleManager_mediaBundlesLock;
  sub_1001BC5A8(&qword_100528660, &qword_100450550);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(self + v4) = v5;
  *(self + OBJC_IVAR___MRDMediaBundleManager__mediaBundles) = sub_100359B2C(_swiftEmptyArrayStorage);
  v7.receiver = self;
  v7.super_class = type metadata accessor for MRDMediaBundleManager();
  return [(MRDMediaBundleManager *)&v7 init];
}

- (void)queryEligibilityOf:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100459EC0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100459ED0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_1001D34BC(0, 0, v10, &unk_100459EE0, v15);
}

@end