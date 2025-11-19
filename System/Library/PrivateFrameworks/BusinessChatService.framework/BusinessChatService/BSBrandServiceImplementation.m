@interface BSBrandServiceImplementation
- (BSBrandServiceImplementation)init;
- (void)assetDataForBrandURI:(NSString *)a3 URL:(NSURL *)a4 type:(int64_t)a5 usingSim:(NSString *)a6 cachingEnabled:(BOOL)a7 completion:(id)a8;
- (void)brandAssetWithIdentifier:(NSString *)a3 forService:(NSString *)a4 completion:(id)a5;
- (void)brandDataWithIdentifier:(NSString *)a3 forService:(NSString *)a4 completion:(id)a5;
- (void)clearCachedAssetsForBrandURI:(NSString *)a3 completion:(id)a4;
- (void)clearUnusedCachedLogos:(id)a3;
- (void)fetchAssetWithURL:(NSURL *)a3 assetType:(int64_t)a4 completion:(id)a5;
- (void)isBrandRegisteredWithIdentifier:(NSString *)a3 forService:(NSString *)a4 completion:(id)a5;
- (void)isBrandRegisteredWithIdentifier:(NSString *)a3 forService:(NSString *)a4 timeout:(double)a5 completion:(id)a6;
- (void)logoFileURLForBrandURI:(id)a3 remoteURL:(id)a4 completion:(id)a5;
@end

@implementation BSBrandServiceImplementation

- (void)assetDataForBrandURI:(NSString *)a3 URL:(NSURL *)a4 type:(int64_t)a5 usingSim:(NSString *)a6 cachingEnabled:(BOOL)a7 completion:(id)a8
{
  v15 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v28 - v17;
  v19 = _Block_copy(a8);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a5;
  *(v20 + 40) = a6;
  *(v20 + 48) = a7;
  *(v20 + 56) = v19;
  *(v20 + 64) = self;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_100020C68;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_100020C70;
  v23[5] = v22;
  v24 = a3;
  v25 = a4;
  v26 = a6;
  v27 = self;
  sub_10000DDC4(0, 0, v18, &unk_100020C78, v23);
}

- (void)logoFileURLForBrandURI:(id)a3 remoteURL:(id)a4 completion:(id)a5
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v12);
  v16 = self;
  sub_1000115CC(v13, v15, v11, v16, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v8 + 8))(v11, v7);
}

- (void)fetchAssetWithURL:(NSURL *)a3 assetType:(int64_t)a4 completion:(id)a5
{
  v9 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100020C40;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100020C48;
  v17[5] = v16;
  v18 = a3;
  v19 = self;
  sub_10000DDC4(0, 0, v12, &unk_100020C50, v17);
}

- (void)clearCachedAssetsForBrandURI:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
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
  v14[4] = &unk_100020C20;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100020C28;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_10000DDC4(0, 0, v10, &unk_100020C30, v15);
}

- (void)clearUnusedCachedLogos:(id)a3
{
  v5 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100020C00;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100020C08;
  v13[5] = v12;
  v14 = self;
  sub_10000DDC4(0, 0, v8, &unk_100020C10, v13);
}

- (void)isBrandRegisteredWithIdentifier:(NSString *)a3 forService:(NSString *)a4 completion:(id)a5
{
  v9 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100020BE0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100020BE8;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_10000DDC4(0, 0, v12, &unk_100020BF0, v17);
}

- (void)isBrandRegisteredWithIdentifier:(NSString *)a3 forService:(NSString *)a4 timeout:(double)a5 completion:(id)a6
{
  v11 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = v15;
  *(v16 + 48) = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100020BC0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100020BC8;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = self;
  sub_10000DDC4(0, 0, v14, &unk_100020BD0, v19);
}

- (void)brandDataWithIdentifier:(NSString *)a3 forService:(NSString *)a4 completion:(id)a5
{
  v9 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100020BA0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100020BA8;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_10000DDC4(0, 0, v12, &unk_100020BB0, v17);
}

- (void)brandAssetWithIdentifier:(NSString *)a3 forService:(NSString *)a4 completion:(id)a5
{
  v9 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100020B58;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100020B68;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_10000DDC4(0, 0, v12, &unk_100020B78, v17);
}

- (BSBrandServiceImplementation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end