@interface MFServerMessagesIndexQuery
- (CSSuggestion)suggestion;
- (MFServerMessagesIndexQuery)initWithSuggestion:(id)a3 accountID:(id)a4 mailboxes:(id)a5 limit:(int64_t)a6;
- (NSArray)mailboxURLs;
- (NSString)accountID;
- (int64_t)limit;
@end

@implementation MFServerMessagesIndexQuery

- (CSSuggestion)suggestion
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  v5 = sub_1B0903220();
  MEMORY[0x1E69E5920](self);

  return v5;
}

- (NSString)accountID
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  sub_1B09032FC();
  MEMORY[0x1E69E5920](self);
  v5 = sub_1B0E44AC8();

  return v5;
}

- (NSArray)mailboxURLs
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  sub_1B09033E0();
  MEMORY[0x1E69E5920](self);
  sub_1B0E42E68();
  v5 = sub_1B0E451A8();

  return v5;
}

- (int64_t)limit
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  v5 = sub_1B0903484();
  MEMORY[0x1E69E5920](self);
  return v5;
}

- (MFServerMessagesIndexQuery)initWithSuggestion:(id)a3 accountID:(id)a4 mailboxes:(id)a5 limit:(int64_t)a6
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  v9 = sub_1B0E44AD8();
  v10 = v6;
  sub_1B0E42E68();
  v7 = sub_1B0E451B8();
  v15 = sub_1B0903580(a3, v9, v10, v7, a6);
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](a4);
  return v15;
}

@end