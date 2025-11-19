@interface EMMessageFlagChangeAllAction
- (EMMessageFlagChangeAllAction)initWithCoder:(id)a3;
- (EMMessageFlagChangeAllAction)initWithMailboxes:(id)a3 messageListItemsToExclude:(id)a4 flagChange:(id)a5 origin:(int64_t)a6 actor:(int64_t)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMMessageFlagChangeAllAction

- (EMMessageFlagChangeAllAction)initWithMailboxes:(id)a3 messageListItemsToExclude:(id)a4 flagChange:(id)a5 origin:(int64_t)a6 actor:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v19.receiver = self;
  v19.super_class = EMMessageFlagChangeAllAction;
  v15 = [(EMMessageFlagChangeAction *)&v19 initWithMessageListItems:v13 origin:a6 actor:a7 flagChange:v14];
  if (v15)
  {
    v16 = [v12 ef_mapSelector:sel_objectID];
    mailboxObjectIDs = v15->_mailboxObjectIDs;
    v15->_mailboxObjectIDs = v16;
  }

  return v15;
}

- (EMMessageFlagChangeAllAction)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = EMMessageFlagChangeAllAction;
  v5 = [(EMMessageFlagChangeAction *)&v12 initWithCoder:v4];
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
  v6.super_class = EMMessageFlagChangeAllAction;
  [(EMMessageFlagChangeAction *)&v6 encodeWithCoder:v4];
  v5 = [(EMMessageFlagChangeAllAction *)self mailboxObjectIDs];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_mailboxObjectIDs"];
}

@end