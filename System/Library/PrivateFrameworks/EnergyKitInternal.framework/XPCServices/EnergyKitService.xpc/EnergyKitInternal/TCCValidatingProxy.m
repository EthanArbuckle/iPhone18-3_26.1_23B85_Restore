@interface TCCValidatingProxy
- (_TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy)init;
- (void)batchedDeviceInsightsWithRequest:(id)a3 endpoint:(id)a4 ekSandboxExtension:(id)a5 completion:(id)a6;
- (void)batchedWholeHomeInsightsWithRequest:(id)a3 endpoint:(id)a4 ekSandboxExtension:(id)a5 wholeHomeOptimization:(BOOL)a6 completion:(id)a7;
- (void)configureCostInclusionForGuidanceWithIsIncluded:(BOOL)a3 for:(id)a4 reply:(id)a5;
- (void)createFirstHomeWithReply:(id)a3;
- (void)deleteGridIDAppTrackingFor:(id)a3 reply:(id)a4;
- (void)electricityGuidanceWithQuery:(id)a3 gridID:(id)a4 reply:(id)a5;
- (void)electricityGuidanceWithVenue:(id)a3 query:(id)a4 gridID:(id)a5 reply:(id)a6;
- (void)energyVenuesWithReply:(id)a3;
- (void)getMockOptionsWithCompletionHandler:(id)a3;
- (void)gridIDFor:(NSString *)a3 ekSandboxExtension:(_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer *)a4 completionHandler:(id)a5;
- (void)gridIDWithLocation:(CLLocation *)a3 ekSandboxExtension:(_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer *)a4 completionHandler:(id)a5;
- (void)gridIDWithLocation:(id)a3 sandboxExtension:(id)a4 reply:(id)a5;
- (void)gridIDWithVenue:(id)a3 sandboxExtension:(id)a4 reply:(id)a5;
- (void)guidanceWithQuery:(signed __int16)a3 gridID:(NSString *)a4 completionHandler:(id)a5;
- (void)guidanceWithSite:(NSString *)a3 query:(signed __int16)a4 gridID:(NSString *)a5 completionHandler:(id)a6;
- (void)hasAnyHomesWithReply:(id)a3;
- (void)isCostInclusionConfiguredForGuidanceFor:(id)a3 reply:(id)a4;
- (void)setMockOptionsWithOptions:(int64_t)a3 completionHandler:(id)a4;
- (void)setUpEKSandboxWithSandboxExtension:(_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer *)a3 completionHandler:(id)a4;
- (void)setUpSandboxWithSandboxExtension:(id)a3 reply:(id)a4;
- (void)siteFor:(NSString *)a3 completionHandler:(id)a4;
- (void)siteWithHomeID:(NSUUID *)a3 completionHandler:(id)a4;
- (void)sitesWithCompletionHandler:(id)a3;
- (void)sitesWithNear:(CLLocation *)a3 radius:(double)a4 completionHandler:(id)a5;
- (void)submitLoadEventsWithEvents:(id)a3 venue:(id)a4 sandboxExtension:(id)a5 reply:(id)a6;
- (void)validateTCCAccessWithReply:(id)a3;
@end

@implementation TCCValidatingProxy

- (void)energyVenuesWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_10001438C(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)hasAnyHomesWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;

  _Block_copy(v4);
  sub_10000658C(0x6F48796E41736168, 0xEB0000000073656DLL, v6, v6, sub_100015444, v5, &unk_1000BEC68, &selRef_hasAnyHomesWithReply_, &unk_1000BEC40);
  _Block_release(v4);
}

- (void)createFirstHomeWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;

  _Block_copy(v4);
  sub_100005AC8(0x6946657461657263, 0xEF656D6F48747372, v6, v6, sub_100015440, v5);
  _Block_release(v4);
}

- (void)isCostInclusionConfiguredForGuidanceFor:(id)a3 reply:(id)a4
{
  v6 = sub_1000A2508();
  v7 = *(v6 - 8);
  __chkstk_darwin(*(v7 + 64));
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = _Block_copy(a4);
  sub_1000A24F8();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v14 = self;
  v15 = v9;
  v16 = sub_100014FF4;
  v17 = v11;
  v12 = self;
  _Block_copy(v10);
  sub_100008250(0xD000000000000024, 0x80000001000A5DD0, sub_100014FFC);
  _Block_release(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)configureCostInclusionForGuidanceWithIsIncluded:(BOOL)a3 for:(id)a4 reply:(id)a5
{
  v8 = sub_1000A2508();
  v9 = *(v8 - 8);
  __chkstk_darwin(*(v9 + 64));
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = _Block_copy(a5);
  sub_1000A24F8();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v16 = self;
  v17 = a3;
  v18 = v11;
  v19 = sub_100015440;
  v20 = v13;
  v14 = self;
  _Block_copy(v12);
  sub_100008250(0xD000000000000021, 0x80000001000A5DA0, sub_100014FCC);
  _Block_release(v12);

  (*(v9 + 8))(v11, v8);
}

- (void)deleteGridIDAppTrackingFor:(id)a3 reply:(id)a4
{
  v6 = sub_1000A2508();
  v7 = *(v6 - 8);
  __chkstk_darwin(*(v7 + 64));
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = _Block_copy(a4);
  sub_1000A24F8();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v14 = self;
  v15 = v9;
  v16 = sub_100014FA4;
  v17 = v11;
  v12 = self;
  _Block_copy(v10);
  sub_100008250(0xD000000000000017, 0x80000001000A5D60, sub_100014FAC);
  _Block_release(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)setUpSandboxWithSandboxExtension:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  v9 = a3;
  v10 = v8;

  _Block_copy(v6);
  sub_100006018(0x6E61537055746573, 0xEC000000786F6264, v10, v10, a3, sub_1000153CC, v7);
  _Block_release(v6);
}

- (void)validateTCCAccessWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;

  _Block_copy(v4);
  sub_10000658C(0xD000000000000011, 0x80000001000A5300, v6, v6, sub_100014F9C, v5, &unk_1000BEA10, &selRef_validateTCCAccessWithReply_, &unk_1000BE9E8);
  _Block_release(v4);
}

- (void)gridIDWithVenue:(id)a3 sandboxExtension:(id)a4 reply:(id)a5
{
  v8 = sub_1000A2508();
  v9 = *(v8 - 8);
  __chkstk_darwin(*(v9 + 64));
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  sub_1000A24F8();
  _Block_copy(v12);
  v13 = a4;
  v14 = self;
  sub_10001452C(v11, a4, v14, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v9 + 8))(v11, v8);
}

- (void)gridIDWithLocation:(id)a3 sandboxExtension:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = self;
  v11 = a3;
  v12 = a4;
  v13 = v11;
  v14 = v12;
  v15 = v10;

  _Block_copy(v8);
  sub_100006B28(0xD000000000000011, 0x80000001000A5D10, v15, v15, v13, a4, sub_100014F70, v9);
  _Block_release(v8);
}

- (void)electricityGuidanceWithVenue:(id)a3 query:(id)a4 gridID:(id)a5 reply:(id)a6
{
  v9 = sub_1000A2508();
  v10 = *(v9 - 8);
  __chkstk_darwin(*(v10 + 64));
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = _Block_copy(a6);
  sub_1000A24F8();
  v14 = sub_1000A3A88();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v21 = self;
  v22 = v12;
  v23 = a4;
  v24 = v14;
  v25 = v16;
  v26 = sub_1000153B0;
  v27 = v17;
  v18 = a4;
  v19 = self;
  _Block_copy(v13);
  sub_100008250(0xD00000000000001BLL, 0x80000001000A5CF0, sub_100014F48);
  _Block_release(v13);

  (*(v10 + 8))(v12, v9);
}

- (void)electricityGuidanceWithQuery:(id)a3 gridID:(id)a4 reply:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_1000A3A88();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = self;
  v13 = a3;
  v14 = v12;

  _Block_copy(v7);
  sub_1000070C0(0xD00000000000001BLL, 0x80000001000A5C80, v14, v14, v13, v8, v10, sub_100014EFC, v11);
  _Block_release(v7);
}

- (void)batchedWholeHomeInsightsWithRequest:(id)a3 endpoint:(id)a4 ekSandboxExtension:(id)a5 wholeHomeOptimization:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = self;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = v15;
  v19 = v16;
  v20 = v17;
  v21 = v14;

  _Block_copy(v12);
  sub_100007694(0xD000000000000018, 0x80000001000A5C60, v21, v21, v18, v19, a5, v7, sub_1000153CC, v13);
  _Block_release(v12);
}

- (void)batchedDeviceInsightsWithRequest:(id)a3 endpoint:(id)a4 ekSandboxExtension:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = self;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = v13;
  v17 = v14;
  v18 = v15;
  v19 = v12;

  _Block_copy(v10);
  sub_100007C54(0xD000000000000015, 0x80000001000A5C40, v19, v19, v16, v17, a5, sub_100014F40, v11);
  _Block_release(v10);
}

- (void)submitLoadEventsWithEvents:(id)a3 venue:(id)a4 sandboxExtension:(id)a5 reply:(id)a6
{
  v10 = sub_1000A2508();
  v11 = *(v10 - 8);
  __chkstk_darwin(*(v11 + 64));
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = _Block_copy(a6);
  sub_1000A24F8();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v20 = self;
  v21 = a3;
  v22 = v13;
  v23 = a5;
  v24 = sub_100014EFC;
  v25 = v15;
  v16 = a3;
  v17 = a5;
  v18 = self;
  _Block_copy(v14);
  sub_100008250(0xD000000000000010, 0x80000001000A5C00, sub_100014F04);
  _Block_release(v14);

  (*(v11 + 8))(v13, v10);
}

- (void)gridIDFor:(NSString *)a3 ekSandboxExtension:(_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer *)a4 completionHandler:(id)a5
{
  v9 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
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
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_10008959C(0, 0, v11, &unk_1000AB890, v16);
}

- (void)gridIDWithLocation:(CLLocation *)a3 ekSandboxExtension:(_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer *)a4 completionHandler:(id)a5
{
  v9 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
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
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_10008959C(0, 0, v11, &unk_1000AB860, v16);
}

- (void)guidanceWithSite:(NSString *)a3 query:(signed __int16)a4 gridID:(NSString *)a5 completionHandler:(id)a6
{
  v11 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
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
  v19 = a3;
  v20 = a5;
  v21 = self;
  sub_10008959C(0, 0, v13, &unk_1000AB838, v18);
}

- (void)guidanceWithQuery:(signed __int16)a3 gridID:(NSString *)a4 completionHandler:(id)a5
{
  v9 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
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
  v17 = a4;
  v18 = self;
  sub_10008959C(0, 0, v11, &unk_1000AB808, v16);
}

- (void)siteFor:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v15 = a3;
  v16 = self;
  sub_10008959C(0, 0, v9, &unk_1000AB7D8, v14);
}

- (void)siteWithHomeID:(NSUUID *)a3 completionHandler:(id)a4
{
  v7 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v15 = a3;
  v16 = self;
  sub_10008959C(0, 0, v9, &unk_1000AB790, v14);
}

- (void)sitesWithNear:(CLLocation *)a3 radius:(double)a4 completionHandler:(id)a5
{
  v9 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
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
  v17 = a3;
  v18 = self;
  sub_10008959C(0, 0, v11, &unk_1000AB760, v16);
}

- (void)sitesWithCompletionHandler:(id)a3
{
  v5 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
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
  v13 = self;
  sub_10008959C(0, 0, v7, &unk_1000AB730, v12);
}

- (void)setMockOptionsWithOptions:(int64_t)a3 completionHandler:(id)a4
{
  v7 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v15 = self;
  sub_10008959C(0, 0, v9, &unk_1000AB708, v14);
}

- (void)getMockOptionsWithCompletionHandler:(id)a3
{
  v5 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
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
  v13 = self;
  sub_10008959C(0, 0, v7, &unk_1000AB6D8, v12);
}

- (void)setUpEKSandboxWithSandboxExtension:(_TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer *)a3 completionHandler:(id)a4
{
  v7 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v15 = a3;
  v16 = self;
  sub_10008959C(0, 0, v9, &unk_1000AB6A8, v14);
}

- (_TtC16EnergyKitServiceP33_2D2DC1C7D933FC71CE72A1C07FFB3AED18TCCValidatingProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end