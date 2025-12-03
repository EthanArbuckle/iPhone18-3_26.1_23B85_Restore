@interface MSJunkTriageAction
+ (BOOL)hasNonJunkMessagesInSelection:(id)selection;
- (BOOL)hasNonJunkMessages;
- (MSJunkTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate;
@end

@implementation MSJunkTriageAction

- (MSJunkTriageAction)initWithMessageListSelection:(id)selection origin:(int64_t)origin actor:(int64_t)actor delegate:(id)delegate
{
  selectionCopy = selection;
  delegateCopy = delegate;
  if ([objc_opt_class() hasNonJunkMessagesInSelection:selectionCopy])
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
  v15 = [(MSMoveTriageAction *)&v18 initWithMessageListSelection:selectionCopy origin:origin actor:actor delegate:delegateCopy destinationMailboxType:v13 flagChange:v12 copyMessages:v17];

  return v15;
}

- (BOOL)hasNonJunkMessages
{
  v3 = objc_opt_class();
  messageListItemSelection = [(MSTriageAction *)self messageListItemSelection];
  LOBYTE(v3) = [v3 hasNonJunkMessagesInSelection:messageListItemSelection];

  return v3;
}

+ (BOOL)hasNonJunkMessagesInSelection:(id)selection
{
  selectionCopy = selection;
  if ([selectionCopy isSelectAll])
  {
    mailboxes = [selectionCopy mailboxes];
    v5 = [mailboxes ef_any:&__block_literal_global_5];
  }

  else
  {
    mailboxes = [selectionCopy messageListItems];
    v5 = [mailboxes ef_any:&__block_literal_global_8];
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