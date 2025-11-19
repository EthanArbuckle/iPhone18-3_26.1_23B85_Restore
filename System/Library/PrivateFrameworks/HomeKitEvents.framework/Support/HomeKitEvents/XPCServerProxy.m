@interface XPCServerProxy
- (void)clearEnergyKitDataWithPrivateHomeIdentifiers:(id)a3 sharedHomeIdentifiers:(id)a4 deletePrivateCloudZones:(BOOL)a5 reply:(id)a6;
- (void)collectDiagnosticsWithIncludeSensitiveData:(BOOL)a3 reply:(id)a4;
- (void)createEventsWithEventsData:(id)a3 scope:(int64_t)a4 reply:(id)a5;
- (void)createFakeEventsWithDate:(id)a3 homeIdentifier:(id)a4 count:(int64_t)a5 reply:(id)a6;
- (void)ensureDigestsWithHomeIdentifier:(id)a3 reply:(id)a4;
- (void)exitWithExitStatus:(int64_t)a3 reply:(id)a4;
- (void)hmvutilClearLocalDatabaseWithHomes:(id)a3 reply:(id)a4;
- (void)hmvutilCreateEncryptionKeyWithHomeIdentifier:(id)a3 keyIdentifier:(id)a4 skipZoneCreation:(BOOL)a5 reply:(id)a6;
- (void)hmvutilCreateEventsWithEventsData:(id)a3 scope:(int64_t)a4 uploadOnly:(BOOL)a5 saveOnly:(BOOL)a6 skipZoneCreation:(BOOL)a7 reply:(id)a8;
- (void)hmvutilCreateFakeEventsWithDate:(id)a3 homeIdentifier:(id)a4 count:(int64_t)a5 scope:(int64_t)a6 uploadOnly:(BOOL)a7 saveOnly:(BOOL)a8 skipZoneCreation:(BOOL)a9 reply:(id)a10;
- (void)hmvutilDeleteEncryptionKeyWithHomeIdentifier:(id)a3 keyIdentifier:(id)a4 reply:(id)a5;
- (void)hmvutilDumpLocalDatabaseWithReply:(id)a3;
- (void)hmvutilEnsureDigestsWithHomeIdentifier:(id)a3 customCreationDate:(id)a4 reply:(id)a5;
- (void)hmvutilResetConfigurationWithReply:(id)a3;
- (void)hmvutilUploadEventsWithBatchCount:(id)a3 reply:(id)a4;
- (void)resetConfigurationWithReply:(id)a3;
@end

@implementation XPCServerProxy

- (void)createEventsWithEventsData:(id)a3 scope:(int64_t)a4 reply:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v7);

  sub_10005A750(v8, a4, self, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)createFakeEventsWithDate:(id)a3 homeIdentifier:(id)a4 count:(int64_t)a5 reply:(id)a6
{
  v20 = a5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a6);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;

  sub_10004FF54(v16, v11, v20, sub_10005F7EC, v18);

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

- (void)clearEnergyKitDataWithPrivateHomeIdentifiers:(id)a3 sharedHomeIdentifiers:(id)a4 deletePrivateCloudZones:(BOOL)a5 reply:(id)a6
{
  v6 = a5;
  v7 = _Block_copy(a6);
  type metadata accessor for UUID();
  sub_10005E474(&unk_1000AC310, &type metadata accessor for UUID);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;

  sub_10005082C(v8, v9, v6, sub_10005EC90, v10);
}

- (void)ensureDigestsWithHomeIdentifier:(id)a3 reply:(id)a4
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;

  sub_100051F64(v9, sub_10005F7EC, v11);

  (*(v6 + 8))(v9, v5);
}

- (void)resetConfigurationWithReply:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_10005724C(sub_10005F7EC, v4, "resetConfiguration", &unk_1000A3AA0, 1, sub_10005F7E8);
}

- (void)hmvutilClearLocalDatabaseWithHomes:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  if (a3)
  {
    type metadata accessor for UUID();
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_100053810(a3, sub_10005F7EC, v6);
}

- (void)hmvutilCreateEventsWithEventsData:(id)a3 scope:(int64_t)a4 uploadOnly:(BOOL)a5 saveOnly:(BOOL)a6 skipZoneCreation:(BOOL)a7 reply:(id)a8
{
  v8 = a7;
  v9 = a6;
  v10 = a5;
  v13 = _Block_copy(a8);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);

  sub_10005AEF8(v14, a4, v10, v9, v8, self, v13);
  _Block_release(v13);
  _Block_release(v13);
}

- (void)hmvutilCreateFakeEventsWithDate:(id)a3 homeIdentifier:(id)a4 count:(int64_t)a5 scope:(int64_t)a6 uploadOnly:(BOOL)a7 saveOnly:(BOOL)a8 skipZoneCreation:(BOOL)a9 reply:(id)a10
{
  v26 = a7;
  v27 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v22[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = _Block_copy(a10);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v21);

  sub_10005B83C(v20, v15, v24, v25, v26, v27, v23, self, v21);
  _Block_release(v21);
  _Block_release(v21);

  (*(v12 + 8))(v15, v11);
  (*(v17 + 8))(v20, v16);
}

- (void)hmvutilDumpLocalDatabaseWithReply:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_1000552D0(sub_10005DEE0, v4);
}

- (void)hmvutilUploadEventsWithBatchCount:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a3;

  sub_100055AA8(a3, sub_10005F7EC, v6);
}

- (void)exitWithExitStatus:(int64_t)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_1000561FC(a3, sub_10005F7EC, v6);
}

- (void)hmvutilResetConfigurationWithReply:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_10005724C(sub_10005F7EC, v4, "hmvutilResetConfiguration", &unk_1000A3348, 2, sub_10005F7E8);
}

- (void)hmvutilCreateEncryptionKeyWithHomeIdentifier:(id)a3 keyIdentifier:(id)a4 skipZoneCreation:(BOOL)a5 reply:(id)a6
{
  v7 = a5;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v16 = _Block_copy(a6);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;

  sub_100057534(v15, v13, v7, sub_10005F7EC, v17);

  v18 = *(v9 + 8);
  v18(v13, v8);
  v18(v15, v8);
}

- (void)hmvutilDeleteEncryptionKeyWithHomeIdentifier:(id)a3 keyIdentifier:(id)a4 reply:(id)a5
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  v14 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;

  sub_1000584D4(v13, v11, sub_10005F7EC, v15);

  v16 = *(v7 + 8);
  v16(v11, v6);
  v16(v13, v6);
}

- (void)hmvutilEnsureDigestsWithHomeIdentifier:(id)a3 customCreationDate:(id)a4 reply:(id)a5
{
  v7 = sub_10000CED0(&qword_1000AB0C8, &qword_100085F18);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v10, v17, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;

  sub_100058D80(v15, v10, sub_10005CFA4, v19);

  sub_10000D620(v10, &qword_1000AB0C8, &qword_100085F18);
  (*(v12 + 8))(v15, v11);
}

- (void)collectDiagnosticsWithIncludeSensitiveData:(BOOL)a3 reply:(id)a4
{
  v4 = a3;
  v6 = _Block_copy(a4);
  _Block_copy(v6);

  sub_10005C1F0(v4, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end