@interface EMMessageDeleteAllAction
- (EMMessageDeleteAllAction)initWithCoder:(id)coder;
- (EMMessageDeleteAllAction)initWithMailboxes:(id)mailboxes origin:(int64_t)origin actor:(int64_t)actor messageListItemsToExclude:(id)exclude;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMessageDeleteAllAction

- (EMMessageDeleteAllAction)initWithMailboxes:(id)mailboxes origin:(int64_t)origin actor:(int64_t)actor messageListItemsToExclude:(id)exclude
{
  mailboxesCopy = mailboxes;
  excludeCopy = exclude;
  v16.receiver = self;
  v16.super_class = EMMessageDeleteAllAction;
  v12 = [(EMMessageChangeAction *)&v16 initWithMessageListItems:excludeCopy origin:origin actor:actor];
  if (v12)
  {
    v13 = [mailboxesCopy ef_mapSelector:sel_objectID];
    mailboxObjectIDs = v12->_mailboxObjectIDs;
    v12->_mailboxObjectIDs = v13;
  }

  return v12;
}

- (EMMessageDeleteAllAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = EMMessageDeleteAllAction;
  v5 = [(EMMessageChangeAction *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_mailboxObjectIDs"];
    mailboxObjectIDs = v5->_mailboxObjectIDs;
    v5->_mailboxObjectIDs = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = EMMessageDeleteAllAction;
  [(EMMessageChangeAction *)&v6 encodeWithCoder:coderCopy];
  mailboxObjectIDs = [(EMMessageDeleteAllAction *)self mailboxObjectIDs];
  [coderCopy encodeObject:mailboxObjectIDs forKey:@"EFPropertyKey_mailboxObjectIDs"];
}

@end