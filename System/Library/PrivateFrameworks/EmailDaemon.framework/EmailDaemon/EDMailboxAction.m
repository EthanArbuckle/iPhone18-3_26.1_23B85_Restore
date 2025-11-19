@interface EDMailboxAction
+ (id)actionWithID:(int64_t)a3 toCreateMailbox:(int64_t)a4 mailboxName:(id)a5;
+ (id)actionWithID:(int64_t)a3 toDeleteMailbox:(int64_t)a4 mailboxName:(id)a5;
+ (id)actionWithID:(int64_t)a3 toRenameMailbox:(int64_t)a4 mailboxName:(id)a5 toName:(id)a6;
- (EDMailboxAction)initWithID:(int64_t)a3 actionType:(int64_t)a4 mailboxID:(int64_t)a5 mailboxName:(id)a6 renamedMailboxName:(id)a7;
@end

@implementation EDMailboxAction

+ (id)actionWithID:(int64_t)a3 toCreateMailbox:(int64_t)a4 mailboxName:(id)a5
{
  v8 = a5;
  v9 = [[a1 alloc] initWithID:a3 actionType:1 mailboxID:a4 mailboxName:v8 renamedMailboxName:0];

  return v9;
}

+ (id)actionWithID:(int64_t)a3 toDeleteMailbox:(int64_t)a4 mailboxName:(id)a5
{
  v8 = a5;
  v9 = [[a1 alloc] initWithID:a3 actionType:2 mailboxID:a4 mailboxName:v8 renamedMailboxName:0];

  return v9;
}

+ (id)actionWithID:(int64_t)a3 toRenameMailbox:(int64_t)a4 mailboxName:(id)a5 toName:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [[a1 alloc] initWithID:a3 actionType:3 mailboxID:a4 mailboxName:v10 renamedMailboxName:v11];

  return v12;
}

- (EDMailboxAction)initWithID:(int64_t)a3 actionType:(int64_t)a4 mailboxID:(int64_t)a5 mailboxName:(id)a6 renamedMailboxName:(id)a7
{
  v12 = a6;
  v13 = a7;
  v21.receiver = self;
  v21.super_class = EDMailboxAction;
  v14 = [(EDMailboxAction *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_actionID = a3;
    v14->_actionType = a4;
    v14->_mailboxID = a5;
    v16 = [v12 copy];
    mailboxName = v15->_mailboxName;
    v15->_mailboxName = v16;

    v18 = [v13 copy];
    renamedMailboxName = v15->_renamedMailboxName;
    v15->_renamedMailboxName = v18;
  }

  return v15;
}

@end