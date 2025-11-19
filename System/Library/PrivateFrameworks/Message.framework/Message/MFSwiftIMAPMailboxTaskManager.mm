@interface MFSwiftIMAPMailboxTaskManager
- (BOOL)canFetchMessageIDs;
- (BOOL)downloadMimePartNumber:(id)a3 message:(id)a4 withProgressBlock:(id)a5;
- (BOOL)fetchDataForMimePart:(id)a3 range:(_NSRange)a4 isComplete:(BOOL *)a5 consumer:(id)a6;
- (MFMailMessageLibrary)library;
- (MFSwiftIMAPMailboxTaskManager)initWithMailbox:(id)a3 taskManager:(id)a4;
- (id)downloadSearchResults:(id)a3;
- (id)fetchDataForMessage:(id)a3 didDownload:(BOOL *)a4;
- (id)fetchDataForMessage:(id)a3 partial:(BOOL *)a4;
- (id)fetchHeadersForMessage:(id)a3;
- (id)messageIdRollCall:(id)a3;
- (id)replayAction:(id)a3;
- (id)searchWithCriterion:(id)a3 limit:(unsigned int)a4;
- (int64_t)fetchMessagesWithMessageIDs:(id)a3 andSetFlags:(unint64_t)a4;
- (int64_t)fetchNumMessages:(int64_t)a3 preservingUID:(id)a4 options:(unint64_t)a5;
- (void)close;
- (void)compact;
- (void)deleteMessagesOlderThanNumberOfDays:(int)a3 compact:(BOOL)a4;
- (void)fetchDataForMessage:(id)a3 completionHandler:(id)a4;
- (void)growFetchWindow;
- (void)handleFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5;
- (void)reselectMailbox;
- (void)setLibrary:(id)a3;
- (void)updateServerUnreadCountClosingConnection:(BOOL)a3;
@end

@implementation MFSwiftIMAPMailboxTaskManager

- (MFMailMessageLibrary)library
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1B075188C();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setLibrary:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1B0751964(a3);
  MEMORY[0x1E69E5920](self);
}

- (MFSwiftIMAPMailboxTaskManager)initWithMailbox:(id)a3 taskManager:(id)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  return sub_1B0751AD0(a3, a4);
}

- (BOOL)canFetchMessageIDs
{
  MEMORY[0x1E69E5928](self);
  sub_1B0751E08();
  MEMORY[0x1E69E5920](self);
  return sub_1B0E43368() & 1;
}

- (void)close
{
  MEMORY[0x1E69E5928](self);
  sub_1B0751E24();
  MEMORY[0x1E69E5920](self);
}

- (void)compact
{
  MEMORY[0x1E69E5928](self);
  sub_1B0751E24();
  MEMORY[0x1E69E5920](self);
}

- (void)growFetchWindow
{
  MEMORY[0x1E69E5928](self);
  sub_1B0751E24();
  MEMORY[0x1E69E5920](self);
}

- (void)reselectMailbox
{
  MEMORY[0x1E69E5928](self);
  sub_1B0751E24();
  MEMORY[0x1E69E5920](self);
}

- (int64_t)fetchMessagesWithMessageIDs:(id)a3 andSetFlags:(unint64_t)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1B0E453F8();
  v8 = sub_1B0751F78();

  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);
  return v8;
}

- (int64_t)fetchNumMessages:(int64_t)a3 preservingUID:(id)a4 options:(unint64_t)a5
{
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](self);
  sub_1B0E44AD8();
  v9 = sub_1B075204C();

  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](self);
  return v9;
}

- (void)fetchDataForMessage:(id)a3 completionHandler:(id)a4
{
  MEMORY[0x1E69E5928](a3);
  v6 = _Block_copy(a4);
  MEMORY[0x1E69E5928](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_1B0752138(a3, sub_1B07525FC, v7);

  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (id)fetchDataForMessage:(id)a3 partial:(BOOL *)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  v11 = sub_1B0752604(a3, a4);
  v13 = v5;
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
  if ((v13 & 0xF000000000000000) == 0xF000000000000000)
  {
    v8 = 0;
  }

  else
  {
    v7 = sub_1B0E42F18();
    sub_1B0391D50(v11, v13);
    v8 = v7;
  }

  return v8;
}

- (id)fetchHeadersForMessage:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  v9 = sub_1B0752888(a3);
  v11 = v4;
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
  if ((v11 & 0xF000000000000000) == 0xF000000000000000)
  {
    v7 = 0;
  }

  else
  {
    v6 = sub_1B0E42F18();
    sub_1B0391D50(v9, v11);
    v7 = v6;
  }

  return v7;
}

- (BOOL)fetchDataForMimePart:(id)a3 range:(_NSRange)a4 isComplete:(BOOL *)a5 consumer:(id)a6
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a6);
  MEMORY[0x1E69E5928](self);
  sub_1B0752D18(a3, a4.location, a4.length, a5, a6);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a6);
  MEMORY[0x1E69E5920](a3);
  return sub_1B0E43368() & 1;
}

- (BOOL)downloadMimePartNumber:(id)a3 message:(id)a4 withProgressBlock:(id)a5
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  v9 = _Block_copy(a5);
  MEMORY[0x1E69E5928](self);
  v10 = sub_1B0E44AD8();
  v12 = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  sub_1B07533BC(v10, v12, a4, sub_1B075352C, v11);

  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a4);
  return sub_1B0E43368() & 1;
}

- (id)fetchDataForMessage:(id)a3 didDownload:(BOOL *)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  v11 = sub_1B0753954(a3, a4);
  v13 = v5;
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
  if ((v13 & 0xF000000000000000) == 0xF000000000000000)
  {
    v8 = 0;
  }

  else
  {
    v7 = sub_1B0E42F18();
    sub_1B0391D50(v11, v13);
    v8 = v7;
  }

  return v8;
}

- (id)searchWithCriterion:(id)a3 limit:(unsigned int)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  v8 = sub_1B0753BBC(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);

  return v8;
}

- (id)downloadSearchResults:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  v7 = sub_1B0753DD0(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);

  return v7;
}

- (void)deleteMessagesOlderThanNumberOfDays:(int)a3 compact:(BOOL)a4
{
  MEMORY[0x1E69E5928](self);
  sub_1B0E43378();
  sub_1B0754178();
  MEMORY[0x1E69E5920](self);
}

- (void)handleFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  MEMORY[0x1E69E5928](self);
  sub_1B0753584();
  sub_1B0E451B8();
  sub_1B0E445A8();
  sub_1B0E445A8();
  sub_1B0754210();

  MEMORY[0x1E69E5920](a5);

  MEMORY[0x1E69E5920](a4);

  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);
}

- (void)updateServerUnreadCountClosingConnection:(BOOL)a3
{
  MEMORY[0x1E69E5928](self);
  sub_1B0E43378();
  sub_1B0754388();
  MEMORY[0x1E69E5920](self);
}

- (id)replayAction:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  v7 = sub_1B075440C();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);

  return v7;
}

- (id)messageIdRollCall:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1B0E453F8();
  sub_1B0754510();

  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);
  v7 = sub_1B0E453E8();

  return v7;
}

@end