@interface TCCValidatingProxy
- (_TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy)init;
- (void)batchedDeviceInsightsWithRequest:(id)request endpoint:(id)endpoint ekSandboxExtension:(id)extension completion:(id)completion;
- (void)batchedWholeHomeInsightsWithRequest:(id)request endpoint:(id)endpoint ekSandboxExtension:(id)extension wholeHomeOptimization:(BOOL)optimization completion:(id)completion;
- (void)configureCostInclusionForGuidanceWithIsIncluded:(BOOL)included for:(id)for reply:(id)reply;
- (void)createFirstHomeWithReply:(id)reply;
- (void)deleteGridIDAppTrackingFor:(id)for reply:(id)reply;
- (void)electricityGuidanceWithQuery:(id)query gridID:(id)d reply:(id)reply;
- (void)electricityGuidanceWithVenue:(id)venue query:(id)query gridID:(id)d reply:(id)reply;
- (void)energyVenuesWithReply:(id)reply;
- (void)getMockOptionsWithCompletionHandler:(id)handler;
- (void)gridIDFor:(NSString *)for ekSandboxExtension:(_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer *)extension completionHandler:(id)handler;
- (void)gridIDWithLocation:(CLLocation *)location ekSandboxExtension:(_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer *)extension completionHandler:(id)handler;
- (void)gridIDWithLocation:(id)location sandboxExtension:(id)extension reply:(id)reply;
- (void)gridIDWithVenue:(id)venue sandboxExtension:(id)extension reply:(id)reply;
- (void)guidanceWithQuery:(signed __int16)query gridID:(NSString *)d completionHandler:(id)handler;
- (void)guidanceWithSite:(NSString *)site query:(signed __int16)query gridID:(NSString *)d completionHandler:(id)handler;
- (void)hasAnyHomesWithReply:(id)reply;
- (void)isCostInclusionConfiguredForGuidanceFor:(id)for reply:(id)reply;
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

@implementation TCCValidatingProxy

- (void)energyVenuesWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  _Block_copy(v4);
  selfCopy = self;
  sub_10001438C(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)hasAnyHomesWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;

  _Block_copy(v4);
  sub_10000658C(0x6F48796E41736168, 0xEB0000000073656DLL, selfCopy, selfCopy, sub_100015444, v5, &unk_1000BEC68, &selRef_hasAnyHomesWithReply_, &unk_1000BEC40);
  _Block_release(v4);
}

- (void)createFirstHomeWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;

  _Block_copy(v4);
  sub_100005AC8(0x6946657461657263, 0xEF656D6F48747372, selfCopy, selfCopy, sub_100015440, v5);
  _Block_release(v4);
}

- (void)isCostInclusionConfiguredForGuidanceFor:(id)for reply:(id)reply
{
  v6 = sub_1000A2508();
  v7 = *(v6 - 8);
  __chkstk_darwin(*(v7 + 64));
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = _Block_copy(reply);
  sub_1000A24F8();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  selfCopy = self;
  v15 = v9;
  v16 = sub_100014FF4;
  v17 = v11;
  selfCopy2 = self;
  _Block_copy(v10);
  sub_100008250(0xD000000000000024, 0x80000001000A5DD0, sub_100014FFC);
  _Block_release(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)configureCostInclusionForGuidanceWithIsIncluded:(BOOL)included for:(id)for reply:(id)reply
{
  v8 = sub_1000A2508();
  v9 = *(v8 - 8);
  __chkstk_darwin(*(v9 + 64));
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = _Block_copy(reply);
  sub_1000A24F8();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  selfCopy = self;
  includedCopy = included;
  v18 = v11;
  v19 = sub_100015440;
  v20 = v13;
  selfCopy2 = self;
  _Block_copy(v12);
  sub_100008250(0xD000000000000021, 0x80000001000A5DA0, sub_100014FCC);
  _Block_release(v12);

  (*(v9 + 8))(v11, v8);
}

- (void)deleteGridIDAppTrackingFor:(id)for reply:(id)reply
{
  v6 = sub_1000A2508();
  v7 = *(v6 - 8);
  __chkstk_darwin(*(v7 + 64));
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = _Block_copy(reply);
  sub_1000A24F8();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  selfCopy = self;
  v15 = v9;
  v16 = sub_100014FA4;
  v17 = v11;
  selfCopy2 = self;
  _Block_copy(v10);
  sub_100008250(0xD000000000000017, 0x80000001000A5D60, sub_100014FAC);
  _Block_release(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)setUpSandboxWithSandboxExtension:(id)extension reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  extensionCopy = extension;
  v10 = selfCopy;

  _Block_copy(v6);
  sub_100006018(0x6E61537055746573, 0xEC000000786F6264, v10, v10, extension, sub_1000153CC, v7);
  _Block_release(v6);
}

- (void)validateTCCAccessWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;

  _Block_copy(v4);
  sub_10000658C(0xD000000000000011, 0x80000001000A5300, selfCopy, selfCopy, sub_100014F9C, v5, &unk_1000BEA10, &selRef_validateTCCAccessWithReply_, &unk_1000BE9E8);
  _Block_release(v4);
}

- (void)gridIDWithVenue:(id)venue sandboxExtension:(id)extension reply:(id)reply
{
  v8 = sub_1000A2508();
  v9 = *(v8 - 8);
  __chkstk_darwin(*(v9 + 64));
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(reply);
  sub_1000A24F8();
  _Block_copy(v12);
  extensionCopy = extension;
  selfCopy = self;
  sub_10001452C(v11, extension, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v9 + 8))(v11, v8);
}

- (void)gridIDWithLocation:(id)location sandboxExtension:(id)extension reply:(id)reply
{
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  selfCopy = self;
  locationCopy = location;
  extensionCopy = extension;
  v13 = locationCopy;
  v14 = extensionCopy;
  v15 = selfCopy;

  _Block_copy(v8);
  sub_100006B28(0xD000000000000011, 0x80000001000A5D10, v15, v15, v13, extension, sub_100014F70, v9);
  _Block_release(v8);
}

- (void)electricityGuidanceWithVenue:(id)venue query:(id)query gridID:(id)d reply:(id)reply
{
  v9 = sub_1000A2508();
  v10 = *(v9 - 8);
  __chkstk_darwin(*(v10 + 64));
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = _Block_copy(reply);
  sub_1000A24F8();
  v14 = sub_1000A3A88();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  selfCopy = self;
  v22 = v12;
  queryCopy = query;
  v24 = v14;
  v25 = v16;
  v26 = sub_1000153B0;
  v27 = v17;
  queryCopy2 = query;
  selfCopy2 = self;
  _Block_copy(v13);
  sub_100008250(0xD00000000000001BLL, 0x80000001000A5CF0, sub_100014F48);
  _Block_release(v13);

  (*(v10 + 8))(v12, v9);
}

- (void)electricityGuidanceWithQuery:(id)query gridID:(id)d reply:(id)reply
{
  v7 = _Block_copy(reply);
  v8 = sub_1000A3A88();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  selfCopy = self;
  queryCopy = query;
  v14 = selfCopy;

  _Block_copy(v7);
  sub_1000070C0(0xD00000000000001BLL, 0x80000001000A5C80, v14, v14, queryCopy, v8, v10, sub_100014EFC, v11);
  _Block_release(v7);
}

- (void)batchedWholeHomeInsightsWithRequest:(id)request endpoint:(id)endpoint ekSandboxExtension:(id)extension wholeHomeOptimization:(BOOL)optimization completion:(id)completion
{
  optimizationCopy = optimization;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  selfCopy = self;
  requestCopy = request;
  endpointCopy = endpoint;
  extensionCopy = extension;
  v18 = requestCopy;
  v19 = endpointCopy;
  v20 = extensionCopy;
  v21 = selfCopy;

  _Block_copy(v12);
  sub_100007694(0xD000000000000018, 0x80000001000A5C60, v21, v21, v18, v19, extension, optimizationCopy, sub_1000153CC, v13);
  _Block_release(v12);
}

- (void)batchedDeviceInsightsWithRequest:(id)request endpoint:(id)endpoint ekSandboxExtension:(id)extension completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  selfCopy = self;
  requestCopy = request;
  endpointCopy = endpoint;
  extensionCopy = extension;
  v16 = requestCopy;
  v17 = endpointCopy;
  v18 = extensionCopy;
  v19 = selfCopy;

  _Block_copy(v10);
  sub_100007C54(0xD000000000000015, 0x80000001000A5C40, v19, v19, v16, v17, extension, sub_100014F40, v11);
  _Block_release(v10);
}

- (void)submitLoadEventsWithEvents:(id)events venue:(id)venue sandboxExtension:(id)extension reply:(id)reply
{
  v10 = sub_1000A2508();
  v11 = *(v10 - 8);
  __chkstk_darwin(*(v11 + 64));
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = _Block_copy(reply);
  sub_1000A24F8();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  selfCopy = self;
  eventsCopy = events;
  v22 = v13;
  extensionCopy = extension;
  v24 = sub_100014EFC;
  v25 = v15;
  eventsCopy2 = events;
  extensionCopy2 = extension;
  selfCopy2 = self;
  _Block_copy(v14);
  sub_100008250(0xD000000000000010, 0x80000001000A5C00, sub_100014F04);
  _Block_release(v14);

  (*(v11 + 8))(v13, v10);
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
  v15[4] = &unk_1000AB880;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000AB888;
  v16[5] = v15;
  forCopy = for;
  extensionCopy = extension;
  selfCopy = self;
  sub_10008959C(0, 0, v11, &unk_1000AB890, v16);
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
  v15[4] = &unk_1000AB850;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000AB858;
  v16[5] = v15;
  locationCopy = location;
  extensionCopy = extension;
  selfCopy = self;
  sub_10008959C(0, 0, v11, &unk_1000AB860, v16);
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
  v17[4] = &unk_1000AB828;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1000AB830;
  v18[5] = v17;
  siteCopy = site;
  dCopy = d;
  selfCopy = self;
  sub_10008959C(0, 0, v13, &unk_1000AB838, v18);
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
  v15[4] = &unk_1000AB7F8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000AB800;
  v16[5] = v15;
  dCopy = d;
  selfCopy = self;
  sub_10008959C(0, 0, v11, &unk_1000AB808, v16);
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
  v13[4] = &unk_1000AB7C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000AB7D0;
  v14[5] = v13;
  forCopy = for;
  selfCopy = self;
  sub_10008959C(0, 0, v9, &unk_1000AB7D8, v14);
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
  v13[4] = &unk_1000AB780;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000AB788;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_10008959C(0, 0, v9, &unk_1000AB790, v14);
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
  v15[4] = &unk_1000AB750;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000AB758;
  v16[5] = v15;
  nearCopy = near;
  selfCopy = self;
  sub_10008959C(0, 0, v11, &unk_1000AB760, v16);
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
  v11[4] = &unk_1000AB720;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000AB728;
  v12[5] = v11;
  selfCopy = self;
  sub_10008959C(0, 0, v7, &unk_1000AB730, v12);
}

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
  v13[4] = &unk_1000AB6F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000AB700;
  v14[5] = v13;
  selfCopy = self;
  sub_10008959C(0, 0, v9, &unk_1000AB708, v14);
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
  v11[4] = &unk_1000AB6C8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000AB6D0;
  v12[5] = v11;
  selfCopy = self;
  sub_10008959C(0, 0, v7, &unk_1000AB6D8, v12);
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
  v13[4] = &unk_1000AB698;
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

- (_TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end