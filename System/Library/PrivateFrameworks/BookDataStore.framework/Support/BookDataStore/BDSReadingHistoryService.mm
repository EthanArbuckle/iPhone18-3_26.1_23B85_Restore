@interface BDSReadingHistoryService
- (BDSReadingHistoryService)init;
- (BDSReadingHistoryService)initWithReadingGoalsService:(id)service transactionProvider:(id)provider viewStateChangeHandler:(id)handler;
- (id)serviceStatusInfo;
- (void)backupWithName:(NSString *)name completionHandler:(id)handler;
- (void)bookWidgetReadingHistoryStateInfoWithCompletionHandler:(id)handler;
- (void)clearDate:(id)date completionHandler:(id)handler;
- (void)handlePlaceholderStreakDayGoalNeedsUpdate:(id)update;
- (void)handleSignificantDateChange:(id)change;
- (void)handleSyncFileChangeWithSyncVersionInfo:(id)info updateInfo:(id)updateInfo completionHandler:(id)handler;
- (void)incrementWithDate:(id)date by:(int64_t)by completionHandler:(id)handler;
- (void)listBackupWithCompletionHandler:(id)handler;
- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)handler;
- (void)readingHistoryStateInfoWithRangeStart:(id)start rangeEnd:(id)end currentTime:(id)time completionHandler:(id)handler;
- (void)restoreWithName:(NSString *)name completionHandler:(id)handler;
- (void)setEnableCloudSync:(BOOL)sync;
@end

@implementation BDSReadingHistoryService

- (BDSReadingHistoryService)initWithReadingGoalsService:(id)service transactionProvider:(id)provider viewStateChangeHandler:(id)handler
{
  serviceCopy = service;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return ReadingHistoryService.init(readingGoalsService:transactionProvider:viewStateChangeHandler:)(serviceCopy, provider, handler);
}

- (void)clearDate:(id)date completionHandler:(id)handler
{
  v6 = sub_1001C4CA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(handler);
  sub_1001C4C78();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  selfCopy = self;
  ReadingHistoryService.clearDate(_:completionHandler:)(v10, sub_1000F51A4, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)handleSyncFileChangeWithSyncVersionInfo:(id)info updateInfo:(id)updateInfo completionHandler:(id)handler
{
  v9 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v21 - v11);
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  if (!info)
  {
    v18 = type metadata accessor for CRDTModelSyncVersion();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    updateInfoCopy = updateInfo;
    selfCopy = self;
    if (updateInfo)
    {
      goto LABEL_3;
    }

LABEL_5:
    update = 0;
    goto LABEL_6;
  }

  updateInfoCopy2 = updateInfo;
  selfCopy2 = self;
  static CRDTModelSyncVersion.fromInfo(_:)(info, v12);
  if (!updateInfo)
  {
    goto LABEL_5;
  }

LABEL_3:
  update = [updateInfo update];
LABEL_6:
  ReadingHistoryService.handleSyncFileChange(syncVersion:update:completionHandler:)(v12, update, sub_1000F51A4, v14);

  sub_10008875C(v12, &unk_10026F350, &qword_1001F31E0);
}

- (void)incrementWithDate:(id)date by:(int64_t)by completionHandler:(id)handler
{
  v8 = sub_1001C4CA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(handler);
  sub_1001C4C78();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  selfCopy = self;
  ReadingHistoryService.increment(date:by:completionHandler:)(v12, by, sub_1000F324C, v14);

  (*(v9 + 8))(v12, v8);
}

- (void)readingHistoryStateInfoWithRangeStart:(id)start rangeEnd:(id)end currentTime:(id)time completionHandler:(id)handler
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
  v19 = _Block_copy(handler);
  sub_1001C4C78();
  sub_1001C4C78();
  sub_1001C4C78();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  selfCopy = self;
  ReadingHistoryService.readingHistoryStateInfo(rangeStart:rangeEnd:currentTime:completionHandler:)(v18, v16, v13, sub_1000F3230, v20);

  v22 = *(v9 + 8);
  v22(v13, v8);
  v22(v16, v8);
  v22(v18, v8);
}

- (void)setEnableCloudSync:(BOOL)sync
{
  selfCopy = self;
  ReadingHistoryService.setEnableCloudSync(_:)(sync);
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

- (void)handlePlaceholderStreakDayGoalNeedsUpdate:(id)update
{
  v4 = sub_1001C4868();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C4848();
  selfCopy = self;
  sub_1000E5244();

  (*(v5 + 8))(v8, v4);
}

- (void)handleSignificantDateChange:(id)change
{
  v4 = sub_1001C4868();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C4848();
  selfCopy = self;
  sub_1000E56A4();

  (*(v5 + 8))(v8, v4);
}

- (void)bookWidgetReadingHistoryStateInfoWithCompletionHandler:(id)handler
{
  v5 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
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
  selfCopy = self;
  sub_100118770(0, 0, v8, &unk_1001F3460, v13);
}

- (BDSReadingHistoryService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)handler
{
  v5 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
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
  selfCopy = self;
  sub_100118770(0, 0, v8, &unk_1001F3440, v13);
}

- (void)backupWithName:(NSString *)name completionHandler:(id)handler
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = name;
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
  nameCopy = name;
  selfCopy = self;
  sub_100118770(0, 0, v10, &unk_1001F3420, v15);
}

- (void)listBackupWithCompletionHandler:(id)handler
{
  v5 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
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
  selfCopy = self;
  sub_100118770(0, 0, v8, &unk_1001F3400, v13);
}

- (void)restoreWithName:(NSString *)name completionHandler:(id)handler
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = name;
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
  nameCopy = name;
  selfCopy = self;
  sub_100118770(0, 0, v10, &unk_1001F33E0, v15);
}

@end