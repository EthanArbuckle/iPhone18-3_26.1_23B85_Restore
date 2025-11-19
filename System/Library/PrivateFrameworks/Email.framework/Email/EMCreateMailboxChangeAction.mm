@interface EMCreateMailboxChangeAction
- (EMCreateMailboxChangeAction)initWithCoder:(id)a3;
- (EMCreateMailboxChangeAction)initWithMailboxName:(id)a3 parentMailbox:(id)a4;
- (EMCreateMailboxChangeAction)initWithMailboxName:(id)a3 parentMailboxID:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMCreateMailboxChangeAction

- (EMCreateMailboxChangeAction)initWithMailboxName:(id)a3 parentMailbox:(id)a4
{
  v6 = a3;
  v7 = [a4 objectID];
  v8 = [(EMCreateMailboxChangeAction *)self initWithMailboxName:v6 parentMailboxID:v7];

  return v8;
}

- (EMCreateMailboxChangeAction)initWithMailboxName:(id)a3 parentMailboxID:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = EMCreateMailboxChangeAction;
  v8 = [(EMMailboxChangeAction *)&v11 initWithMailboxObjectID:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
  }

  return v9;
}

- (EMCreateMailboxChangeAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EMCreateMailboxChangeAction;
  v5 = [(EMMailboxChangeAction *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_name"];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = EMCreateMailboxChangeAction;
  [(EMMailboxChangeAction *)&v6 encodeWithCoder:v4];
  v5 = [(EMCreateMailboxChangeAction *)self name];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_name"];
}

@end