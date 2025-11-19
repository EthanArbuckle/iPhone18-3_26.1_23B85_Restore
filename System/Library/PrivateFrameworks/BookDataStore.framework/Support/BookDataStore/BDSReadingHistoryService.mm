@interface BDSReadingHistoryService
- (BDSReadingHistoryService)init;
- (BDSReadingHistoryService)initWithReadingGoalsService:(id)a3 transactionProvider:(id)a4 viewStateChangeHandler:(id)a5;
- (id)serviceStatusInfo;
- (void)backupWithName:(NSString *)a3 completionHandler:(id)a4;
- (void)bookWidgetReadingHistoryStateInfoWithCompletionHandler:(id)a3;
- (void)clearDate:(id)a3 completionHandler:(id)a4;
- (void)handlePlaceholderStreakDayGoalNeedsUpdate:(id)a3;
- (void)handleSignificantDateChange:(id)a3;
- (void)handleSyncFileChangeWithSyncVersionInfo:(id)a3 updateInfo:(id)a4 completionHandler:(id)a5;
- (void)incrementWithDate:(id)a3 by:(int64_t)a4 completionHandler:(id)a5;
- (void)listBackupWithCompletionHandler:(id)a3;
- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)a3;
- (void)readingHistoryStateInfoWithRangeStart:(id)a3 rangeEnd:(id)a4 currentTime:(id)a5 completionHandler:(id)a6;
- (void)restoreWithName:(NSString *)a3 completionHandler:(id)a4;
- (void)setEnableCloudSync:(BOOL)a3;
@end

@implementation BDSReadingHistoryService

- (BDSReadingHistoryService)initWithReadingGoalsService:(id)a3 transactionProvider:(id)a4 viewStateChangeHandler:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return ReadingHistoryService.init(readingGoalsService:transactionProvider:viewStateChangeHandler:)(v7, a4, a5);
}

- (void)clearDate:(id)a3 completionHandler:(id)a4
{
  v6 = sub_1001C4CA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_1001C4C78();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  ReadingHistoryService.clearDate(_:completionHandler:)(v10, sub_1000F51A4, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)handleSyncFileChangeWithSyncVersionInfo:(id)a3 updateInfo:(id)a4 completionHandler:(id)a5
{
  v9 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v21 - v11);
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  if (!a3)
  {
    v18 = type metadata accessor for CRDTModelSyncVersion();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    v19 = a4;
    v20 = self;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    goto LABEL_6;
  }

  v15 = a4;
  v16 = self;
  static CRDTModelSyncVersion.fromInfo(_:)(a3, v12);
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = [a4 update];
LABEL_6:
  ReadingHistoryService.handleSyncFileChange(syncVersion:update:completionHandler:)(v12, v17, sub_1000F51A4, v14);

  sub_10008875C(v12, &unk_10026F350, &qword_1001F31E0);
}

- (void)incrementWithDate:(id)a3 by:(int64_t)a4 completionHandler:(id)a5
{
  v8 = sub_1001C4CA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  sub_1001C4C78();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = self;
  ReadingHistoryService.increment(date:by:completionHandler:)(v12, a4, sub_1000F324C, v14);

  (*(v9 + 8))(v12, v8);
}

- (void)readingHistoryStateInfoWithRangeStart:(id)a3 rangeEnd:(id)a4 currentTime:(id)a5 completionHandler:(id)a6
{
  v8 = sub_1001C4CA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v23 - v15;
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v19 = _Block_copy(a6);
  sub_1001C4C78();
  sub_1001C4C78();
  sub_1001C4C78();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = self;
  ReadingHistoryService.readingHistoryStateInfo(rangeStart:rangeEnd:currentTime:completionHandler:)(v18, v16, v13, sub_1000F3230, v20);

  v22 = *(v9 + 8);
  v22(v13, v8);
  v22(v16, v8);
  v22(v18, v8);
}

- (void)setEnableCloudSync:(BOOL)a3
{
  v4 = self;
  ReadingHistoryService.setEnableCloudSync(_:)(a3);
}

- (id)serviceStatusInfo
{
  v2 = [objc_allocWithZone(BDSReadingHistoryServiceStatusInfo) initWithIsLoaded:1];
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001F0670;
  *(v3 + 56) = sub_100088714(0, &qword_10026F370, off_10023DD40);
  *(v3 + 64) = sub_1000F17CC(&qword_10026F378, &qword_10026F370, off_10023DD40);
  *(v3 + 32) = v2;
  v4 = v2;
  sub_1001C5118();

  return v4;
}

- (void)handlePlaceholderStreakDayGoalNeedsUpdate:(id)a3
{
  v4 = sub_1001C4868();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C4848();
  v9 = self;
  sub_1000E5244();

  (*(v5 + 8))(v8, v4);
}

- (void)handleSignificantDateChange:(id)a3
{
  v4 = sub_1001C4868();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C4848();
  v9 = self;
  sub_1000E56A4();

  (*(v5 + 8))(v8, v4);
}

- (void)bookWidgetReadingHistoryStateInfoWithCompletionHandler:(id)a3
{
  v5 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1001C6348();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F3450;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F0E30;
  v13[5] = v12;
  v14 = self;
  sub_100118770(0, 0, v8, &unk_1001F3460, v13);
}

- (BDSReadingHistoryService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)a3
{
  v5 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1001C6348();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F3430;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F0E10;
  v13[5] = v12;
  v14 = self;
  sub_100118770(0, 0, v8, &unk_1001F3440, v13);
}

- (void)backupWithName:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1001C6348();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001F3410;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001F0DF0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100118770(0, 0, v10, &unk_1001F3420, v15);
}

- (void)listBackupWithCompletionHandler:(id)a3
{
  v5 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1001C6348();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F33F0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F0DD0;
  v13[5] = v12;
  v14 = self;
  sub_100118770(0, 0, v8, &unk_1001F3400, v13);
}

- (void)restoreWithName:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1001C6348();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001F33D0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001F0DB0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100118770(0, 0, v10, &unk_1001F33E0, v15);
}

@end