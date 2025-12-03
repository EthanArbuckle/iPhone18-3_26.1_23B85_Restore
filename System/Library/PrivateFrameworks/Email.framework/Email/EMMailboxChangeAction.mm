@interface EMMailboxChangeAction
- (EMMailboxChangeAction)initWithCoder:(id)coder;
- (EMMailboxChangeAction)initWithMailbox:(id)mailbox;
- (EMMailboxChangeAction)initWithMailboxObjectID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMailboxChangeAction

- (EMMailboxChangeAction)initWithMailbox:(id)mailbox
{
  objectID = [mailbox objectID];
  v5 = [(EMMailboxChangeAction *)self initWithMailboxObjectID:objectID];

  return v5;
}

- (EMMailboxChangeAction)initWithMailboxObjectID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = EMMailboxChangeAction;
  v6 = [(EMMailboxChangeAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailboxObjectID, d);
  }

  return v7;
}

- (EMMailboxChangeAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_mailboxObjectID"];
  v6 = [(EMMailboxChangeAction *)self initWithMailboxObjectID:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mailboxObjectID = [(EMMailboxChangeAction *)self mailboxObjectID];
  [coderCopy encodeObject:mailboxObjectID forKey:@"EFPropertyKey_mailboxObjectID"];
}

@end