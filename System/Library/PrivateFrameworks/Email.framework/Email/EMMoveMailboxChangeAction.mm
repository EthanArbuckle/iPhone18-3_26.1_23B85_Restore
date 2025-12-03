@interface EMMoveMailboxChangeAction
- (EMMoveMailboxChangeAction)initWithCoder:(id)coder;
- (EMMoveMailboxChangeAction)initWithMailbox:(id)mailbox newParent:(id)parent;
- (EMMoveMailboxChangeAction)initWithMailboxObjectID:(id)d newParentMailboxID:(id)iD;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMoveMailboxChangeAction

- (EMMoveMailboxChangeAction)initWithMailbox:(id)mailbox newParent:(id)parent
{
  parentCopy = parent;
  objectID = [mailbox objectID];
  objectID2 = [parentCopy objectID];
  v9 = [(EMMoveMailboxChangeAction *)self initWithMailboxObjectID:objectID newParentMailboxID:objectID2];

  return v9;
}

- (EMMoveMailboxChangeAction)initWithMailboxObjectID:(id)d newParentMailboxID:(id)iD
{
  iDCopy = iD;
  v11.receiver = self;
  v11.super_class = EMMoveMailboxChangeAction;
  v8 = [(EMMailboxChangeAction *)&v11 initWithMailboxObjectID:d];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_parentMailboxID, iD);
  }

  return v9;
}

- (EMMoveMailboxChangeAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = EMMoveMailboxChangeAction;
  v5 = [(EMMailboxChangeAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_parentMailboxID"];
    parentMailboxID = v5->_parentMailboxID;
    v5->_parentMailboxID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = EMMoveMailboxChangeAction;
  [(EMMailboxChangeAction *)&v6 encodeWithCoder:coderCopy];
  parentMailboxID = [(EMMoveMailboxChangeAction *)self parentMailboxID];
  [coderCopy encodeObject:parentMailboxID forKey:@"EFPropertyKey_parentMailboxID"];
}

@end