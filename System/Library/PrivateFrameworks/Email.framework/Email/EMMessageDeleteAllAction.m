@interface EMMessageDeleteAllAction
- (EMMessageDeleteAllAction)initWithCoder:(id)a3;
- (EMMessageDeleteAllAction)initWithMailboxes:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 messageListItemsToExclude:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMMessageDeleteAllAction

- (EMMessageDeleteAllAction)initWithMailboxes:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 messageListItemsToExclude:(id)a6
{
  v10 = a3;
  v11 = a6;
  v16.receiver = self;
  v16.super_class = EMMessageDeleteAllAction;
  v12 = [(EMMessageChangeAction *)&v16 initWithMessageListItems:v11 origin:a4 actor:a5];
  if (v12)
  {
    v13 = [v10 ef_mapSelector:sel_objectID];
    mailboxObjectIDs = v12->_mailboxObjectIDs;
    v12->_mailboxObjectIDs = v13;
  }

  return v12;
}

- (EMMessageDeleteAllAction)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = EMMessageDeleteAllAction;
  v5 = [(EMMessageChangeAction *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_mailboxObjectIDs"];
    mailboxObjectIDs = v5->_mailboxObjectIDs;
    v5->_mailboxObjectIDs = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = EMMessageDeleteAllAction;
  [(EMMessageChangeAction *)&v6 encodeWithCoder:v4];
  v5 = [(EMMessageDeleteAllAction *)self mailboxObjectIDs];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_mailboxObjectIDs"];
}

@end