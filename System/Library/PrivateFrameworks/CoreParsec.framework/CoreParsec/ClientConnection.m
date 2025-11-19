@interface ClientConnection
- (void)addEncodedEngagedResults:(id)a3 withConfiguration:(id)a4;
- (void)addEncodedEngagedResults:(id)a3 withConfiguration:(id)a4 completion:(id)a5;
- (void)allEngagedResults:(id)a3 maxCount:(int64_t)a4 withConfiguration:(id)a5 completion:(id)a6;
- (void)bag:(id)a3 reply:(id)a4;
- (void)bagChangeNotificationWithNotification:(id)a3;
- (void)clearEncodedEngagedResults:(id)a3 withConfiguration:(id)a4 completion:(id)a5;
- (void)clearEngagementsFromDate:(id)a3 toDate:(id)a4;
- (void)clearEngagementsWithTitle:(id)a3 type:(id)a4;
- (void)fileDeleteNotificationWithNotification:(id)a3;
- (void)fileDownloadNotificationWithNotification:(id)a3;
- (void)fileHandleAndAttributesForResource:(id)a3 completion:(id)a4;
- (void)fileHandleForWritingFeedbackType:(int64_t)a3 reply:(id)a4;
- (void)forceFetchBag:(id)a3 reply:(id)a4;
- (void)getImageMap:(id)a3;
- (void)getQueryContextDataForClient:(unint64_t)a3 activity:(unint64_t)a4 reply:(id)a5;
- (void)handleInvocation;
- (void)listSessions:(id)a3;
- (void)reportFeedback:(id)a3 payloadData:(id)a4 queryId:(unint64_t)a5;
- (void)reportPegasusFeedbackWithPayloadData:(id)a3 forUseragent:(id)a4;
- (void)request:(id)a3 request:(id)a4 reply:(id)a5;
- (void)stopSessions:(id)a3;
- (void)teeFeedback:(id)a3;
- (void)topEncodedEngagedResultsForInput:(NSString *)a3 maxCount:(int64_t)a4 withConfiguration:(PARSessionConfiguration *)a5 completion:(id)a6;
- (void)updateParametersForSmartSearchV1:(id)a3 smartSearchV2:(id)a4;
@end

@implementation ClientConnection

- (void)handleInvocation
{
  v2 = self;
  sub_1000101C4();
}

- (void)bag:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_100013438;
  }

  v7 = a3;
  v8 = self;
  sub_100010344();
  sub_100010300(v6);
}

- (void)reportFeedback:(id)a3 payloadData:(id)a4 queryId:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v13 = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_10001372C(a3);
  sub_100014A40(v10, v12);
}

- (void)request:(id)a3 request:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_100035960(a3, v10, v11, v8);
  _Block_release(v8);
}

- (void)bagChangeNotificationWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10009A594();
}

- (void)fileDownloadNotificationWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10009A8EC(v4);
}

- (void)fileDeleteNotificationWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10009AB58(v4);
}

- (void)forceFetchBag:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10009ACEC(a3, v8, v6);
  _Block_release(v6);
}

- (void)reportPegasusFeedbackWithPayloadData:(id)a3 forUseragent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10009B410();

  sub_100014A40(v8, v10);
}

- (void)teeFeedback:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_1000A5278;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_10009B9C8(v5);
  sub_100010300(v5);
}

- (void)stopSessions:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_1000A5278;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_10009BD64(v5);
  sub_100010300(v5);
}

- (void)listSessions:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_1000A4964;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_10009C124(v5);
  sub_100010300(v5);
}

- (void)fileHandleAndAttributesForResource:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = sub_1000A495C;
  }

  v9 = self;
  sub_10009C310(v6, v8, v5);
  sub_100010300(v5);
}

- (void)fileHandleForWritingFeedbackType:(int64_t)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_10001341C;
  }

  v7 = self;
  sub_10009C66C(a3, v6);
  sub_100010300(v6);
}

- (void)clearEngagementsFromDate:(id)a3 toDate:(id)a4
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = self;
  sub_10009C868();

  v14 = *(v6 + 8);
  v14(v10, v5);
  v14(v12, v5);
}

- (void)clearEngagementsWithTitle:(id)a3 type:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a4;
  v10 = self;
  sub_10009CA5C(v6, v8, a4);
}

- (void)addEncodedEngagedResults:(id)a3 withConfiguration:(id)a4
{
  if (a3)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a4;
  v8 = self;
  sub_10009CBDC(v6, v7);
}

- (void)addEncodedEngagedResults:(id)a3 withConfiguration:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (a3)
  {
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1000A5278;
  }

  else
  {
    v9 = 0;
  }

  v10 = a4;
  v11 = self;
  sub_10009CDAC(a3, v10, v8, v9);
  sub_100010300(v8);
}

- (void)topEncodedEngagedResultsForInput:(NSString *)a3 maxCount:(int64_t)a4 withConfiguration:(PARSessionConfiguration *)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a5;
  v14 = self;

  sub_10009D8F4(&unk_10019C630, v11);
}

- (void)allEngagedResults:(id)a3 maxCount:(int64_t)a4 withConfiguration:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
    v9 = sub_1000A4898;
  }

  v13 = a5;
  v14 = self;
  sub_10009DA04(v10, v12, a4, v13, v9);
  sub_100010300(v9);
}

- (void)clearEncodedEngagedResults:(id)a3 withConfiguration:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (a3)
  {
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1000A4890;
  }

  else
  {
    v9 = 0;
  }

  v10 = a4;
  v11 = self;
  sub_10009DD50(a3, v10, v8, v9);
  sub_100010300(v8);
}

- (void)updateParametersForSmartSearchV1:(id)a3 smartSearchV2:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10009E0B8();
}

- (void)getImageMap:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_1000A4888;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_10009E1BC(v5);
  sub_100010300(v5);
}

- (void)getQueryContextDataForClient:(unint64_t)a3 activity:(unint64_t)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = self;
  sub_10009E91C(a3, a4, v9, v8);
  _Block_release(v8);
}

@end