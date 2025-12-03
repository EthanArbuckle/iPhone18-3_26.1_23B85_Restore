@interface MFSwiftIMAPMailboxTaskManager
- (BOOL)canFetchMessageIDs;
- (BOOL)downloadMimePartNumber:(id)number message:(id)message withProgressBlock:(id)block;
- (BOOL)fetchDataForMimePart:(id)part range:(_NSRange)range isComplete:(BOOL *)complete consumer:(id)consumer;
- (MFMailMessageLibrary)library;
- (MFSwiftIMAPMailboxTaskManager)initWithMailbox:(id)mailbox taskManager:(id)manager;
- (id)downloadSearchResults:(id)results;
- (id)fetchDataForMessage:(id)message didDownload:(BOOL *)download;
- (id)fetchDataForMessage:(id)message partial:(BOOL *)partial;
- (id)fetchHeadersForMessage:(id)message;
- (id)messageIdRollCall:(id)call;
- (id)replayAction:(id)action;
- (id)searchWithCriterion:(id)criterion limit:(unsigned int)limit;
- (int64_t)fetchMessagesWithMessageIDs:(id)ds andSetFlags:(unint64_t)flags;
- (int64_t)fetchNumMessages:(int64_t)messages preservingUID:(id)d options:(unint64_t)options;
- (void)close;
- (void)compact;
- (void)deleteMessagesOlderThanNumberOfDays:(int)days compact:(BOOL)compact;
- (void)fetchDataForMessage:(id)message completionHandler:(id)handler;
- (void)growFetchWindow;
- (void)handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message;
- (void)reselectMailbox;
- (void)setLibrary:(id)library;
- (void)updateServerUnreadCountClosingConnection:(BOOL)connection;
@end

@implementation MFSwiftIMAPMailboxTaskManager

- (MFMailMessageLibrary)library
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1B075188C();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setLibrary:(id)library
{
  MEMORY[0x1E69E5928](library);
  MEMORY[0x1E69E5928](self);
  sub_1B0751964(library);
  MEMORY[0x1E69E5920](self);
}

- (MFSwiftIMAPMailboxTaskManager)initWithMailbox:(id)mailbox taskManager:(id)manager
{
  MEMORY[0x1E69E5928](mailbox);
  MEMORY[0x1E69E5928](manager);
  return sub_1B0751AD0(mailbox, manager);
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

- (int64_t)fetchMessagesWithMessageIDs:(id)ds andSetFlags:(unint64_t)flags
{
  MEMORY[0x1E69E5928](ds);
  MEMORY[0x1E69E5928](self);
  sub_1B0E453F8();
  v8 = sub_1B0751F78();

  MEMORY[0x1E69E5920](ds);
  MEMORY[0x1E69E5920](self);
  return v8;
}

- (int64_t)fetchNumMessages:(int64_t)messages preservingUID:(id)d options:(unint64_t)options
{
  MEMORY[0x1E69E5928](d);
  MEMORY[0x1E69E5928](self);
  sub_1B0E44AD8();
  v9 = sub_1B075204C();

  MEMORY[0x1E69E5920](d);
  MEMORY[0x1E69E5920](self);
  return v9;
}

- (void)fetchDataForMessage:(id)message completionHandler:(id)handler
{
  MEMORY[0x1E69E5928](message);
  v6 = _Block_copy(handler);
  MEMORY[0x1E69E5928](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_1B0752138(message, sub_1B07525FC, v7);

  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](message);
}

- (id)fetchDataForMessage:(id)message partial:(BOOL *)partial
{
  MEMORY[0x1E69E5928](message);
  MEMORY[0x1E69E5928](self);
  v11 = sub_1B0752604(message, partial);
  v13 = v5;
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](message);
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

- (id)fetchHeadersForMessage:(id)message
{
  MEMORY[0x1E69E5928](message);
  MEMORY[0x1E69E5928](self);
  v9 = sub_1B0752888(message);
  v11 = v4;
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](message);
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

- (BOOL)fetchDataForMimePart:(id)part range:(_NSRange)range isComplete:(BOOL *)complete consumer:(id)consumer
{
  MEMORY[0x1E69E5928](part);
  MEMORY[0x1E69E5928](consumer);
  MEMORY[0x1E69E5928](self);
  sub_1B0752D18(part, range.location, range.length, complete, consumer);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](consumer);
  MEMORY[0x1E69E5920](part);
  return sub_1B0E43368() & 1;
}

- (BOOL)downloadMimePartNumber:(id)number message:(id)message withProgressBlock:(id)block
{
  MEMORY[0x1E69E5928](number);
  MEMORY[0x1E69E5928](message);
  v9 = _Block_copy(block);
  MEMORY[0x1E69E5928](self);
  v10 = sub_1B0E44AD8();
  v12 = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  sub_1B07533BC(v10, v12, message, sub_1B075352C, v11);

  MEMORY[0x1E69E5920](number);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](message);
  return sub_1B0E43368() & 1;
}

- (id)fetchDataForMessage:(id)message didDownload:(BOOL *)download
{
  MEMORY[0x1E69E5928](message);
  MEMORY[0x1E69E5928](self);
  v11 = sub_1B0753954(message, download);
  v13 = v5;
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](message);
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

- (id)searchWithCriterion:(id)criterion limit:(unsigned int)limit
{
  MEMORY[0x1E69E5928](criterion);
  MEMORY[0x1E69E5928](self);
  v8 = sub_1B0753BBC(criterion);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](criterion);

  return v8;
}

- (id)downloadSearchResults:(id)results
{
  MEMORY[0x1E69E5928](results);
  MEMORY[0x1E69E5928](self);
  v7 = sub_1B0753DD0(results);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](results);

  return v7;
}

- (void)deleteMessagesOlderThanNumberOfDays:(int)days compact:(BOOL)compact
{
  MEMORY[0x1E69E5928](self);
  sub_1B0E43378();
  sub_1B0754178();
  MEMORY[0x1E69E5920](self);
}

- (void)handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message
{
  MEMORY[0x1E69E5928](messages);
  MEMORY[0x1E69E5928](flags);
  MEMORY[0x1E69E5928](message);
  MEMORY[0x1E69E5928](self);
  sub_1B0753584();
  sub_1B0E451B8();
  sub_1B0E445A8();
  sub_1B0E445A8();
  sub_1B0754210();

  MEMORY[0x1E69E5920](message);

  MEMORY[0x1E69E5920](flags);

  MEMORY[0x1E69E5920](messages);
  MEMORY[0x1E69E5920](self);
}

- (void)updateServerUnreadCountClosingConnection:(BOOL)connection
{
  MEMORY[0x1E69E5928](self);
  sub_1B0E43378();
  sub_1B0754388();
  MEMORY[0x1E69E5920](self);
}

- (id)replayAction:(id)action
{
  MEMORY[0x1E69E5928](action);
  MEMORY[0x1E69E5928](self);
  v7 = sub_1B075440C();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](action);

  return v7;
}

- (id)messageIdRollCall:(id)call
{
  MEMORY[0x1E69E5928](call);
  MEMORY[0x1E69E5928](self);
  sub_1B0E453F8();
  sub_1B0754510();

  MEMORY[0x1E69E5920](call);
  MEMORY[0x1E69E5920](self);
  v7 = sub_1B0E453E8();

  return v7;
}

@end