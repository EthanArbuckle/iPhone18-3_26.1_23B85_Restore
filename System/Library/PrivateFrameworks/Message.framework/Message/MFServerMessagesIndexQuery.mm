@interface MFServerMessagesIndexQuery
- (CSSuggestion)suggestion;
- (MFServerMessagesIndexQuery)initWithSuggestion:(id)suggestion accountID:(id)d mailboxes:(id)mailboxes limit:(int64_t)limit;
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

- (MFServerMessagesIndexQuery)initWithSuggestion:(id)suggestion accountID:(id)d mailboxes:(id)mailboxes limit:(int64_t)limit
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](suggestion);
  MEMORY[0x1E69E5928](d);
  MEMORY[0x1E69E5928](mailboxes);
  v9 = sub_1B0E44AD8();
  v10 = v6;
  sub_1B0E42E68();
  v7 = sub_1B0E451B8();
  v15 = sub_1B0903580(suggestion, v9, v10, v7, limit);
  MEMORY[0x1E69E5920](mailboxes);
  MEMORY[0x1E69E5920](d);
  return v15;
}

@end