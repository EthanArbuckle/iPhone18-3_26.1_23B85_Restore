@interface EDMailboxAction
+ (id)actionWithID:(int64_t)d toCreateMailbox:(int64_t)mailbox mailboxName:(id)name;
+ (id)actionWithID:(int64_t)d toDeleteMailbox:(int64_t)mailbox mailboxName:(id)name;
+ (id)actionWithID:(int64_t)d toRenameMailbox:(int64_t)mailbox mailboxName:(id)name toName:(id)toName;
- (EDMailboxAction)initWithID:(int64_t)d actionType:(int64_t)type mailboxID:(int64_t)iD mailboxName:(id)name renamedMailboxName:(id)mailboxName;
@end

@implementation EDMailboxAction

+ (id)actionWithID:(int64_t)d toCreateMailbox:(int64_t)mailbox mailboxName:(id)name
{
  nameCopy = name;
  v9 = [[self alloc] initWithID:d actionType:1 mailboxID:mailbox mailboxName:nameCopy renamedMailboxName:0];

  return v9;
}

+ (id)actionWithID:(int64_t)d toDeleteMailbox:(int64_t)mailbox mailboxName:(id)name
{
  nameCopy = name;
  v9 = [[self alloc] initWithID:d actionType:2 mailboxID:mailbox mailboxName:nameCopy renamedMailboxName:0];

  return v9;
}

+ (id)actionWithID:(int64_t)d toRenameMailbox:(int64_t)mailbox mailboxName:(id)name toName:(id)toName
{
  nameCopy = name;
  toNameCopy = toName;
  v12 = [[self alloc] initWithID:d actionType:3 mailboxID:mailbox mailboxName:nameCopy renamedMailboxName:toNameCopy];

  return v12;
}

- (EDMailboxAction)initWithID:(int64_t)d actionType:(int64_t)type mailboxID:(int64_t)iD mailboxName:(id)name renamedMailboxName:(id)mailboxName
{
  nameCopy = name;
  mailboxNameCopy = mailboxName;
  v21.receiver = self;
  v21.super_class = EDMailboxAction;
  v14 = [(EDMailboxAction *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_actionID = d;
    v14->_actionType = type;
    v14->_mailboxID = iD;
    v16 = [nameCopy copy];
    mailboxName = v15->_mailboxName;
    v15->_mailboxName = v16;

    v18 = [mailboxNameCopy copy];
    renamedMailboxName = v15->_renamedMailboxName;
    v15->_renamedMailboxName = v18;
  }

  return v15;
}

@end