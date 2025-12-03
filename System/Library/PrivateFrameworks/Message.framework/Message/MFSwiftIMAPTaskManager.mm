@interface MFSwiftIMAPTaskManager
- (BOOL)createMailbox:(id)mailbox;
- (BOOL)deleteMailbox:(id)mailbox;
- (BOOL)renameMailbox:(id)mailbox toMailbox:(id)toMailbox;
- (id)downloadMessagesForUIDs:(id)ds inMailbox:(id)mailbox;
- (id)fetchSeparatorChar;
- (void)accountDidChange:(id)change;
- (void)addLocalAction:(id)action;
- (void)checkForNewLocalActions;
- (void)closeAllConnections;
- (void)fetchNow:(int)now;
- (void)fetchNow:(int)now withMailboxes:(id)mailboxes completion:(id)completion;
- (void)localMailboxesDidChange;
- (void)startBackFillingMessageBodyDownloadWithRequest:(id)request;
- (void)stopBackFillingMessageBodyDownload;
- (void)test_tearDown;
@end

@implementation MFSwiftIMAPTaskManager

- (void)fetchNow:(int)now withMailboxes:(id)mailboxes completion:(id)completion
{
  MEMORY[0x1E69E5928](mailboxes);
  v11 = _Block_copy(completion);
  MEMORY[0x1E69E5928](self);
  if (mailboxes)
  {
    sub_1B03EE50C();
    v6 = sub_1B0E451B8();
    MEMORY[0x1E69E5920](mailboxes);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v11;
  sub_1B03F0810(now, v7, sub_1B03F0A14, v5);

  MEMORY[0x1E69E5920](self);
}

- (void)test_tearDown
{
  MEMORY[0x1E69E5928](self);
  sub_1B0A4C224();
  MEMORY[0x1E69E5920](self);
}

- (void)accountDidChange:(id)change
{
  selfCopy = self;
  changeCopy = change;
  v10 = sub_1B0E42A08();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](changeCopy);
  v9 = &v5 - v6;
  MEMORY[0x1E69E5928](v4);
  MEMORY[0x1E69E5928](self);
  sub_1B0E429D8();
  sub_1B0A4E3C0(v9);
  (*(v7 + 8))(v9, v10);
  MEMORY[0x1E69E5920](changeCopy);
  MEMORY[0x1E69E5920](selfCopy);
}

- (void)fetchNow:(int)now
{
  MEMORY[0x1E69E5928](self);
  sub_1B0A52FE0(now);
  MEMORY[0x1E69E5920](self);
}

- (void)startBackFillingMessageBodyDownloadWithRequest:(id)request
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  sub_1B0A5391C(request);
  MEMORY[0x1E69E5920](self);
  swift_unknownObjectRelease();
}

- (void)stopBackFillingMessageBodyDownload
{
  MEMORY[0x1E69E5928](self);
  sub_1B0A53A8C();
  MEMORY[0x1E69E5920](self);
}

- (id)downloadMessagesForUIDs:(id)ds inMailbox:(id)mailbox
{
  MEMORY[0x1E69E5928](ds);
  MEMORY[0x1E69E5928](mailbox);
  MEMORY[0x1E69E5928](self);
  v9 = sub_1B0A53B88(ds, mailbox);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](mailbox);
  MEMORY[0x1E69E5920](ds);

  return v9;
}

- (void)closeAllConnections
{
  MEMORY[0x1E69E5928](self);
  sub_1B0A55DF8();
  MEMORY[0x1E69E5920](self);
}

- (BOOL)createMailbox:(id)mailbox
{
  MEMORY[0x1E69E5928](mailbox);
  MEMORY[0x1E69E5928](self);
  if (mailbox)
  {
    v5 = sub_1B0E44AD8();
    v6 = v3;
    MEMORY[0x1E69E5920](mailbox);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  sub_1B0A5A6D4(v7, v8);

  MEMORY[0x1E69E5920](self);
  return sub_1B0E43368() & 1;
}

- (BOOL)deleteMailbox:(id)mailbox
{
  MEMORY[0x1E69E5928](mailbox);
  MEMORY[0x1E69E5928](self);
  if (mailbox)
  {
    v5 = sub_1B0E44AD8();
    v6 = v3;
    MEMORY[0x1E69E5920](mailbox);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  sub_1B0A5ADD8(v7, v8);

  MEMORY[0x1E69E5920](self);
  return sub_1B0E43368() & 1;
}

- (BOOL)renameMailbox:(id)mailbox toMailbox:(id)toMailbox
{
  MEMORY[0x1E69E5928](mailbox);
  MEMORY[0x1E69E5928](toMailbox);
  MEMORY[0x1E69E5928](self);
  if (mailbox)
  {
    v11 = sub_1B0E44AD8();
    v12 = v4;
    MEMORY[0x1E69E5920](mailbox);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (toMailbox)
  {
    v7 = sub_1B0E44AD8();
    v8 = v5;
    MEMORY[0x1E69E5920](toMailbox);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  sub_1B0A5B4DC(v13, v14, v9, v10);

  MEMORY[0x1E69E5920](self);
  return sub_1B0E43368() & 1;
}

- (void)localMailboxesDidChange
{
  MEMORY[0x1E69E5928](self);
  sub_1B0A5BCB8();
  MEMORY[0x1E69E5920](self);
}

- (id)fetchSeparatorChar
{
  MEMORY[0x1E69E5928](self);
  sub_1B0A5BDB4();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1B0E44AC8();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addLocalAction:(id)action
{
  MEMORY[0x1E69E5928](action);
  MEMORY[0x1E69E5928](self);
  sub_1B0A5C690(action);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](action);
}

- (void)checkForNewLocalActions
{
  MEMORY[0x1E69E5928](self);
  sub_1B0A47ED8();
  MEMORY[0x1E69E5920](self);
}

@end