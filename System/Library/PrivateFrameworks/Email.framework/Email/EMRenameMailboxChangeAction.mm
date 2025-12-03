@interface EMRenameMailboxChangeAction
- (EMRenameMailboxChangeAction)initWithCoder:(id)coder;
- (EMRenameMailboxChangeAction)initWithMailbox:(id)mailbox newName:(id)name;
- (EMRenameMailboxChangeAction)initWithMailboxObjectID:(id)d newName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMRenameMailboxChangeAction

- (EMRenameMailboxChangeAction)initWithMailbox:(id)mailbox newName:(id)name
{
  nameCopy = name;
  objectID = [mailbox objectID];
  v8 = [(EMRenameMailboxChangeAction *)self initWithMailboxObjectID:objectID newName:nameCopy];

  return v8;
}

- (EMRenameMailboxChangeAction)initWithMailboxObjectID:(id)d newName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = EMRenameMailboxChangeAction;
  v8 = [(EMMailboxChangeAction *)&v11 initWithMailboxObjectID:d];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
  }

  return v9;
}

- (EMRenameMailboxChangeAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = EMRenameMailboxChangeAction;
  v5 = [(EMMailboxChangeAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_name"];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = EMRenameMailboxChangeAction;
  [(EMMailboxChangeAction *)&v6 encodeWithCoder:coderCopy];
  name = [(EMRenameMailboxChangeAction *)self name];
  [coderCopy encodeObject:name forKey:@"EFPropertyKey_name"];
}

@end