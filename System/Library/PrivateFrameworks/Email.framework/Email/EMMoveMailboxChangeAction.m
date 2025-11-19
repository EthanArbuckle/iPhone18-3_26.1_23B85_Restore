@interface EMMoveMailboxChangeAction
- (EMMoveMailboxChangeAction)initWithCoder:(id)a3;
- (EMMoveMailboxChangeAction)initWithMailbox:(id)a3 newParent:(id)a4;
- (EMMoveMailboxChangeAction)initWithMailboxObjectID:(id)a3 newParentMailboxID:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMMoveMailboxChangeAction

- (EMMoveMailboxChangeAction)initWithMailbox:(id)a3 newParent:(id)a4
{
  v6 = a4;
  v7 = [a3 objectID];
  v8 = [v6 objectID];
  v9 = [(EMMoveMailboxChangeAction *)self initWithMailboxObjectID:v7 newParentMailboxID:v8];

  return v9;
}

- (EMMoveMailboxChangeAction)initWithMailboxObjectID:(id)a3 newParentMailboxID:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = EMMoveMailboxChangeAction;
  v8 = [(EMMailboxChangeAction *)&v11 initWithMailboxObjectID:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_parentMailboxID, a4);
  }

  return v9;
}

- (EMMoveMailboxChangeAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EMMoveMailboxChangeAction;
  v5 = [(EMMailboxChangeAction *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_parentMailboxID"];
    parentMailboxID = v5->_parentMailboxID;
    v5->_parentMailboxID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = EMMoveMailboxChangeAction;
  [(EMMailboxChangeAction *)&v6 encodeWithCoder:v4];
  v5 = [(EMMoveMailboxChangeAction *)self parentMailboxID];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_parentMailboxID"];
}

@end