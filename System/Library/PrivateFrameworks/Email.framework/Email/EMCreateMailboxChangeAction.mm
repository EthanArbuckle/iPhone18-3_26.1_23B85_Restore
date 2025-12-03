@interface EMCreateMailboxChangeAction
- (EMCreateMailboxChangeAction)initWithCoder:(id)coder;
- (EMCreateMailboxChangeAction)initWithMailboxName:(id)name parentMailbox:(id)mailbox;
- (EMCreateMailboxChangeAction)initWithMailboxName:(id)name parentMailboxID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMCreateMailboxChangeAction

- (EMCreateMailboxChangeAction)initWithMailboxName:(id)name parentMailbox:(id)mailbox
{
  nameCopy = name;
  objectID = [mailbox objectID];
  v8 = [(EMCreateMailboxChangeAction *)self initWithMailboxName:nameCopy parentMailboxID:objectID];

  return v8;
}

- (EMCreateMailboxChangeAction)initWithMailboxName:(id)name parentMailboxID:(id)d
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = EMCreateMailboxChangeAction;
  v8 = [(EMMailboxChangeAction *)&v11 initWithMailboxObjectID:d];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
  }

  return v9;
}

- (EMCreateMailboxChangeAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = EMCreateMailboxChangeAction;
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
  v6.super_class = EMCreateMailboxChangeAction;
  [(EMMailboxChangeAction *)&v6 encodeWithCoder:coderCopy];
  name = [(EMCreateMailboxChangeAction *)self name];
  [coderCopy encodeObject:name forKey:@"EFPropertyKey_name"];
}

@end