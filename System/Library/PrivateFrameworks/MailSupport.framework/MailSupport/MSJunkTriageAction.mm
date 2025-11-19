@interface MSJunkTriageAction
+ (BOOL)hasNonJunkMessagesInSelection:(id)a3;
- (BOOL)hasNonJunkMessages;
- (MSJunkTriageAction)initWithMessageListSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6;
@end

@implementation MSJunkTriageAction

- (MSJunkTriageAction)initWithMessageListSelection:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a6;
  if ([objc_opt_class() hasNonJunkMessagesInSelection:v10])
  {
    v12 = [objc_alloc(MEMORY[0x277D070C8]) initWithBuilder:&__block_literal_global_5];
    v13 = 1;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277D070C8]) initWithBuilder:&__block_literal_global_2];
    v13 = 7;
  }

  v14 = v12;
  v18.receiver = self;
  v18.super_class = MSJunkTriageAction;
  v17 = 0;
  v15 = [(MSMoveTriageAction *)&v18 initWithMessageListSelection:v10 origin:a4 actor:a5 delegate:v11 destinationMailboxType:v13 flagChange:v12 copyMessages:v17];

  return v15;
}

- (BOOL)hasNonJunkMessages
{
  v3 = objc_opt_class();
  v4 = [(MSTriageAction *)self messageListItemSelection];
  LOBYTE(v3) = [v3 hasNonJunkMessagesInSelection:v4];

  return v3;
}

+ (BOOL)hasNonJunkMessagesInSelection:(id)a3
{
  v3 = a3;
  if ([v3 isSelectAll])
  {
    v4 = [v3 mailboxes];
    v5 = [v4 ef_any:&__block_literal_global_5];
  }

  else
  {
    v4 = [v3 messageListItems];
    v5 = [v4 ef_any:&__block_literal_global_8];
  }

  v6 = v5;

  return v6;
}

uint64_t __52__MSJunkTriageAction_hasNonJunkMessagesInSelection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 mailboxes];
  v3 = [v2 ef_any:&__block_literal_global_10];

  return v3;
}

@end