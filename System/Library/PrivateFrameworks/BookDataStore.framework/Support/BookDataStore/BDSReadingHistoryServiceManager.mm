@interface BDSReadingHistoryServiceManager
- (BDSReadingHistoryServiceManager)init;
- (BDSReadingHistoryServiceManager)initWithReadingGoalsService:(id)service transactionProvider:(id)provider viewStateChangeHandler:(id)handler;
- (id)serviceStatusInfo;
- (void)backupWithName:(NSString *)name completionHandler:(id)handler;
- (void)bookWidgetReadingHistoryStateInfoWithCompletionHandler:(id)handler;
- (void)clearDataWithCompletionHandler:(id)handler;
- (void)clearDate:(id)date completionHandler:(id)handler;
- (void)clearDefaultsCachedDataWithCompletionHandler:(id)handler;
- (void)clearTodayWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)handleSyncFileChangeWithSyncVersionInfo:(id)info updateInfo:(id)updateInfo completionHandler:(id)handler;
- (void)incrementWithDate:(id)date by:(int64_t)by completionHandler:(id)handler;
- (void)listBackupWithCompletionHandler:(id)handler;
- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)handler;
- (void)readingHistoryStateInfoWithRangeStart:(id)start rangeEnd:(id)end currentTime:(id)time completionHandler:(id)handler;
- (void)restoreWithName:(NSString *)name completionHandler:(id)handler;
- (void)setEnableCloudSync:(BOOL)sync;
- (void)transactionDidBeginWithName:(const char *)name;
- (void)transactionWillEndWithName:(const char *)name;
@end

@implementation BDSReadingHistoryServiceManager

- (BDSReadingHistoryServiceManager)initWithReadingGoalsService:(id)service transactionProvider:(id)provider viewStateChangeHandler:(id)handler
{
  serviceCopy = service;
  providerCopy = provider;
  swift_unknownObjectRetain();
  return ReadingHistoryServiceManager.init(readingGoalsService:transactionProvider:viewStateChangeHandler:)(serviceCopy, providerCopy, handler);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  sub_10008F7D8();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(BDSReadingHistoryServiceManager *)&v5 dealloc];
}

- (void)clearDataWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v7 = sub_1001C5118();
  v8 = *(&selfCopy->super.isa + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue);
  __chkstk_darwin(v7);
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  ReadingHistoryService.clearData(completionHandler:)(sub_10009B2FC, v5);
}

- (void)clearDefaultsCachedDataWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v7 = sub_1001C5118();
  v8 = *(&selfCopy->super.isa + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue);
  __chkstk_darwin(v7);
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  ReadingHistoryService.clearDefaultsCachedData(completionHandler:)(sub_10009B2FC, v5);
}

- (void)clearDate:(id)date completionHandler:(id)handler
{
  v6 = sub_1001C4CA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(handler);
  sub_1001C4C78();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  selfCopy = self;
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v14 = sub_1001C5118();
  v15 = *(&selfCopy->super.isa + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue);
  __chkstk_darwin(v14);
  v17[-2] = selfCopy;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  v16 = v17[1];
  ReadingHistoryService.clearDate(_:completionHandler:)(v10, sub_10009B2FC, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)clearTodayWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v7 = sub_1001C5118();
  v8 = *(&selfCopy->super.isa + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue);
  __chkstk_darwin(v7);
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  ReadingHistoryService.clearToday(completionHandler:)(sub_10009B2FC, v5);
}

- (void)handleSyncFileChangeWithSyncVersionInfo:(id)info updateInfo:(id)updateInfo completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  infoCopy = info;
  updateInfoCopy = updateInfo;
  selfCopy = self;
  ReadingHistoryServiceManager.handleSyncFileChange(syncVersionInfo:updateInfo:completionHandler:)(info, updateInfo, sub_10009B2FC, v9);
}

- (void)incrementWithDate:(id)date by:(int64_t)by completionHandler:(id)handler
{
  v8 = sub_1001C4CA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(handler);
  sub_1001C4C78();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  selfCopy = self;
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v16 = sub_1001C5118();
  v17 = *(&selfCopy->super.isa + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue);
  __chkstk_darwin(v16);
  v19[-2] = selfCopy;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  v18 = v19[1];
  ReadingHistoryService.increment(date:by:completionHandler:)(v12, by, sub_10009AC28, v14);

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
  ReadingHistoryServiceManager.readingHistoryStateInfo(rangeStart:rangeEnd:currentTime:completionHandler:)(v18, v16, v13, sub_10009AC20, v20);

  v22 = *(v9 + 8);
  v22(v13, v8);
  v22(v16, v8);
  v22(v18, v8);
}

- (id)serviceStatusInfo
{
  selfCopy = self;
  isa = ReadingHistoryServiceManager.serviceStatusInfo()().super.isa;

  return isa;
}

- (void)setEnableCloudSync:(BOOL)sync
{
  selfCopy = self;
  ReadingHistoryServiceManager.setEnableCloudSync(_:)(sync);
}

- (BDSReadingHistoryServiceManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)transactionDidBeginWithName:(const char *)name
{
  v5 = *(&self->super.isa + OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCountAccessQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = name;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10009B268;
  *(v7 + 24) = v6;
  v10[4] = sub_10009B264;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000906F4;
  v10[3] = &unk_100242B78;
  v8 = _Block_copy(v10);
  selfCopy = self;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

- (void)transactionWillEndWithName:(const char *)name
{
  v5 = *(&self->super.isa + OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCountAccessQueue);
  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = name;
  v6[4] = 0x403E000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10009B300;
  *(v7 + 24) = v6;
  v10[4] = sub_10009B264;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000906F4;
  v10[3] = &unk_100242B00;
  v8 = _Block_copy(v10);
  selfCopy = self;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
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
  v12[4] = &unk_1001F0E28;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F0E30;
  v13[5] = v12;
  selfCopy = self;
  sub_100118770(0, 0, v8, &unk_1001F3460, v13);
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
  v12[4] = &unk_1001F0E08;
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
  v14[4] = &unk_1001F0DE8;
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
  v12[4] = &unk_1001F0DC8;
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
  v14[4] = &unk_1001F0DA8;
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