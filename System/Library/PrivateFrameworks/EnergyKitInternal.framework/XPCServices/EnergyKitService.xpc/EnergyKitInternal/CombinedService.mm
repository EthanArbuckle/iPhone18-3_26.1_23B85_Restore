@interface CombinedService
- (_TtC16EnergyKitService15CombinedService)init;
- (void)batchedDeviceInsightsWithRequest:(id)request endpoint:(id)endpoint ekSandboxExtension:(id)extension completion:(id)completion;
- (void)batchedWholeHomeInsightsWithRequest:(id)request endpoint:(id)endpoint ekSandboxExtension:(id)extension wholeHomeOptimization:(BOOL)optimization completion:(id)completion;
- (void)configureCostInclusionForGuidanceWithIsIncluded:(BOOL)included for:(id)for reply:(id)reply;
- (void)createFirstHomeWithReply:(id)reply;
- (void)electricityGuidanceWithQuery:(id)query gridID:(id)d reply:(id)reply;
- (void)electricityGuidanceWithVenue:(id)venue query:(id)query gridID:(id)d reply:(id)reply;
- (void)getMockOptionsWithCompletionHandler:(id)handler;
- (void)gridIDFor:(NSString *)for ekSandboxExtension:(_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer *)extension completionHandler:(id)handler;
- (void)gridIDWithLocation:(CLLocation *)location ekSandboxExtension:(_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer *)extension completionHandler:(id)handler;
- (void)gridIDWithLocation:(id)location sandboxExtension:(id)extension reply:(id)reply;
- (void)gridIDWithVenue:(id)venue sandboxExtension:(id)extension reply:(id)reply;
- (void)guidanceWithQuery:(signed __int16)query gridID:(NSString *)d completionHandler:(id)handler;
- (void)guidanceWithSite:(NSString *)site query:(signed __int16)query gridID:(NSString *)d completionHandler:(id)handler;
- (void)setMockOptionsWithOptions:(int64_t)options completionHandler:(id)handler;
- (void)setUpEKSandboxWithSandboxExtension:(_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer *)extension completionHandler:(id)handler;
- (void)setUpSandboxWithSandboxExtension:(id)extension reply:(id)reply;
- (void)siteFor:(NSString *)for completionHandler:(id)handler;
- (void)siteWithHomeID:(NSUUID *)d completionHandler:(id)handler;
- (void)sitesWithCompletionHandler:(id)handler;
- (void)sitesWithNear:(CLLocation *)near radius:(double)radius completionHandler:(id)handler;
- (void)submitLoadEventsWithEvents:(id)events venue:(id)venue sandboxExtension:(id)extension reply:(id)reply;
- (void)validateTCCAccessWithReply:(id)reply;
@end

@implementation CombinedService

- (void)setMockOptionsWithOptions:(int64_t)options completionHandler:(id)handler
{
  v7 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = options;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1000A3BE8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000ABA10;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000ABA18;
  v14[5] = v13;
  selfCopy = self;
  sub_10008959C(0, 0, v9, &unk_1000ABA20, v14);
}

- (void)getMockOptionsWithCompletionHandler:(id)handler
{
  v5 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1000A3BE8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000AB9F8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000AB6A0;
  v12[5] = v11;
  selfCopy = self;
  sub_10008959C(0, 0, v7, &unk_1000AB6A8, v12);
}

- (_TtC16EnergyKitService15CombinedService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setUpSandboxWithSandboxExtension:(id)extension reply:(id)reply
{
  v7 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = &v16 - v8;
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_1000A3BE8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = extension;
  v13[6] = sub_100014F40;
  v13[7] = v11;
  extensionCopy = extension;
  selfCopy = self;
  sub_1000941D8(0, 0, v9, &unk_1000ABB70, v13);
}

- (void)validateTCCAccessWithReply:(id)reply
{
  v5 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = &v13 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_1000A3BE8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = sub_100014F9C;
  v11[6] = v9;
  selfCopy = self;
  sub_1000941D8(0, 0, v7, &unk_1000ABB58, v11);
}

- (void)setUpEKSandboxWithSandboxExtension:(_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer *)extension completionHandler:(id)handler
{
  v7 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = extension;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1000A3BE8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000ABB30;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000AB6A0;
  v14[5] = v13;
  extensionCopy = extension;
  selfCopy = self;
  sub_10008959C(0, 0, v9, &unk_1000AB6A8, v14);
}

- (void)configureCostInclusionForGuidanceWithIsIncluded:(BOOL)included for:(id)for reply:(id)reply
{
  includedCopy = included;
  v7 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = &v25 - v8;
  v10 = sub_1000A2508();
  v11 = *(v10 - 8);
  v12 = v11;
  v13 = v11[8];
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(&v25);
  v16 = &v25 - v15;
  v17 = _Block_copy(reply);
  sub_1000A24F8();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = sub_1000A3BE8();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  (v12[2])(v14, v16, v10);
  v20 = (*(v12 + 80) + 41) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = self;
  *(v22 + 40) = includedCopy;
  (v12[4])(v22 + v20, v14, v10);
  v23 = (v22 + v21);
  *v23 = sub_100015440;
  v23[1] = v18;
  selfCopy = self;

  sub_1000941D8(0, 0, v9, &unk_1000ABBB8, v22);

  (v12[1])(v16, v10);
}

- (void)createFirstHomeWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  _Block_copy(v4);
  selfCopy = self;
  sub_1000215BC(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)batchedWholeHomeInsightsWithRequest:(id)request endpoint:(id)endpoint ekSandboxExtension:(id)extension wholeHomeOptimization:(BOOL)optimization completion:(id)completion
{
  optimizationCopy = optimization;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  requestCopy = request;
  endpointCopy = endpoint;
  extensionCopy = extension;
  selfCopy = self;
  sub_10003403C(requestCopy, endpointCopy, extension, optimizationCopy, sub_10003915C, v13);
}

- (void)batchedDeviceInsightsWithRequest:(id)request endpoint:(id)endpoint ekSandboxExtension:(id)extension completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  requestCopy = request;
  endpointCopy = endpoint;
  extensionCopy = extension;
  selfCopy = self;
  sub_10003630C(requestCopy, endpointCopy, extension, sub_10003896C, v11);
}

- (void)submitLoadEventsWithEvents:(id)events venue:(id)venue sandboxExtension:(id)extension reply:(id)reply
{
  eventsCopy = events;
  extensionCopy = extension;
  selfCopy = self;
  v7 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = &v34 - v8;
  v35 = &v34 - v8;
  v10 = sub_1000A2508();
  v11 = *(v10 - 8);
  v12 = v11;
  v13 = v11[8];
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(&v34);
  v16 = &v34 - v15;
  v17 = _Block_copy(reply);
  v36 = v16;
  sub_1000A24F8();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = sub_1000A3BE8();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  (v12[2])(v14, v16, v10);
  v20 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = selfCopy;
  v24 = eventsCopy;
  *(v22 + 4) = selfCopy;
  *(v22 + 5) = v24;
  v25 = v14;
  v26 = v10;
  (v12[4])(&v22[v20], v25, v10);
  v27 = extensionCopy;
  *&v22[v21] = extensionCopy;
  v28 = &v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v28 = sub_100014EFC;
  v28[1] = v18;
  v29 = v24;
  v30 = v27;
  v31 = v23;
  v32 = v29;
  v33 = v30;

  sub_1000941D8(0, 0, v35, &unk_1000ABFF0, v22);

  (v12[1])(v36, v26);
}

- (void)gridIDWithLocation:(CLLocation *)location ekSandboxExtension:(_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer *)extension completionHandler:(id)handler
{
  v9 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = location;
  v13[3] = extension;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1000A3BE8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000AC670;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000AC678;
  v16[5] = v15;
  locationCopy = location;
  extensionCopy = extension;
  selfCopy = self;
  sub_10008959C(0, 0, v11, &unk_1000AC680, v16);
}

- (void)gridIDWithLocation:(id)location sandboxExtension:(id)extension reply:(id)reply
{
  v9 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = sub_1000A3BE8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = location;
  v15[6] = extension;
  v15[7] = sub_1000153AC;
  v15[8] = v13;
  locationCopy = location;
  extensionCopy = extension;
  selfCopy = self;
  sub_1000941D8(0, 0, v11, &unk_1000AC648, v15);
}

- (void)gridIDWithVenue:(id)venue sandboxExtension:(id)extension reply:(id)reply
{
  selfCopy = self;
  extensionCopy = extension;
  v6 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = &v28 - v7;
  v29 = &v28 - v7;
  v9 = sub_1000A2508();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = v10[8];
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(&v28);
  v15 = &v28 - v14;
  v16 = _Block_copy(reply);
  sub_1000A24F8();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = sub_1000A3BE8();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  (v11[2])(v13, v15, v9);
  v19 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = selfCopy;
  *(v21 + 4) = selfCopy;
  (v11[4])(&v21[v19], v13, v9);
  v23 = extensionCopy;
  *&v21[v20] = extensionCopy;
  v24 = &v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v24 = sub_100014F70;
  v24[1] = v17;
  v25 = v23;
  v26 = v22;
  v27 = v25;

  sub_1000941D8(0, 0, v29, &unk_1000AC618, v21);

  (v11[1])(v15, v9);
}

- (void)gridIDFor:(NSString *)for ekSandboxExtension:(_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer *)extension completionHandler:(id)handler
{
  v9 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = for;
  v13[3] = extension;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1000A3BE8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000AC5F0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000AB6A0;
  v16[5] = v15;
  forCopy = for;
  extensionCopy = extension;
  selfCopy = self;
  sub_10008959C(0, 0, v11, &unk_1000AB6A8, v16);
}

- (void)guidanceWithQuery:(signed __int16)query gridID:(NSString *)d completionHandler:(id)handler
{
  v9 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = query;
  *(v13 + 24) = d;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_1000A3BE8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000ACC58;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000ACC60;
  v16[5] = v15;
  dCopy = d;
  selfCopy = self;
  sub_10008959C(0, 0, v11, &unk_1000ACC68, v16);
}

- (void)guidanceWithSite:(NSString *)site query:(signed __int16)query gridID:(NSString *)d completionHandler:(id)handler
{
  v11 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = site;
  *(v15 + 24) = query;
  *(v15 + 32) = d;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = sub_1000A3BE8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1000ACC20;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1000ACC28;
  v18[5] = v17;
  siteCopy = site;
  dCopy = d;
  selfCopy = self;
  sub_10008959C(0, 0, v13, &unk_1000ACC30, v18);
}

- (void)siteFor:(NSString *)for completionHandler:(id)handler
{
  v7 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1000A3BE8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000ACBF8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000ACC00;
  v14[5] = v13;
  forCopy = for;
  selfCopy = self;
  sub_10008959C(0, 0, v9, &unk_1000ACC08, v14);
}

- (void)siteWithHomeID:(NSUUID *)d completionHandler:(id)handler
{
  v7 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1000A3BE8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000ACBD0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000ACBD8;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_10008959C(0, 0, v9, &unk_1000ACBE0, v14);
}

- (void)sitesWithNear:(CLLocation *)near radius:(double)radius completionHandler:(id)handler
{
  v9 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = near;
  *(v13 + 24) = radius;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_1000A3BE8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000ACBA8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000ACBB0;
  v16[5] = v15;
  nearCopy = near;
  selfCopy = self;
  sub_10008959C(0, 0, v11, &unk_1000ACBB8, v16);
}

- (void)sitesWithCompletionHandler:(id)handler
{
  v5 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1000A3BE8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000ACB68;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000AB6A0;
  v12[5] = v11;
  selfCopy = self;
  sub_10008959C(0, 0, v7, &unk_1000AB6A8, v12);
}

- (void)electricityGuidanceWithVenue:(id)venue query:(id)query gridID:(id)d reply:(id)reply
{
  selfCopy = self;
  queryCopy = query;
  v7 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = &v34 - v8;
  v36 = &v34 - v8;
  v10 = sub_1000A2508();
  v11 = *(v10 - 8);
  v12 = v11;
  v13 = v11[8];
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(&v34);
  v16 = &v34 - v15;
  v17 = _Block_copy(reply);
  v37 = v16;
  sub_1000A24F8();
  v18 = sub_1000A3A88();
  v34 = v19;
  v35 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v21 = sub_1000A3BE8();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  (v12[2])(v14, v16, v10);
  v22 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  v26 = selfCopy;
  *(v25 + 4) = selfCopy;
  (v12[4])(&v25[v22], v14, v10);
  v27 = queryCopy;
  *&v25[v23] = queryCopy;
  v28 = &v25[v24];
  v29 = v34;
  *v28 = v35;
  v28[1] = v29;
  v30 = &v25[(v24 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v30 = sub_1000153B0;
  *(v30 + 1) = v20;
  v31 = v27;
  v32 = v26;
  v33 = v31;

  sub_1000941D8(0, 0, v36, &unk_1000ACCC0, v25);

  (v12[1])(v37, v10);
}

- (void)electricityGuidanceWithQuery:(id)query gridID:(id)d reply:(id)reply
{
  v8 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = &v20 - v9;
  v11 = _Block_copy(reply);
  v12 = sub_1000A3A88();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = sub_1000A3BE8();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = self;
  v17[5] = query;
  v17[6] = v12;
  v17[7] = v14;
  v17[8] = sub_100014EFC;
  v17[9] = v15;
  queryCopy = query;
  selfCopy = self;
  sub_1000941D8(0, 0, v10, &unk_1000ACC88, v17);
}

@end