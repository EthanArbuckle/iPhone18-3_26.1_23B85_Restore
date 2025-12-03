@interface EMMessageFlagChangeAllAction
- (EMMessageFlagChangeAllAction)initWithCoder:(id)coder;
- (EMMessageFlagChangeAllAction)initWithMailboxes:(id)mailboxes messageListItemsToExclude:(id)exclude flagChange:(id)change origin:(int64_t)origin actor:(int64_t)actor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMessageFlagChangeAllAction

- (EMMessageFlagChangeAllAction)initWithMailboxes:(id)mailboxes messageListItemsToExclude:(id)exclude flagChange:(id)change origin:(int64_t)origin actor:(int64_t)actor
{
  mailboxesCopy = mailboxes;
  excludeCopy = exclude;
  changeCopy = change;
  v19.receiver = self;
  v19.super_class = EMMessageFlagChangeAllAction;
  v15 = [(EMMessageFlagChangeAction *)&v19 initWithMessageListItems:excludeCopy origin:origin actor:actor flagChange:changeCopy];
  if (v15)
  {
    v16 = [mailboxesCopy ef_mapSelector:sel_objectID];
    mailboxObjectIDs = v15->_mailboxObjectIDs;
    v15->_mailboxObjectIDs = v16;
  }

  return v15;
}

- (EMMessageFlagChangeAllAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = EMMessageFlagChangeAllAction;
  v5 = [(EMMessageFlagChangeAction *)&v12 initWithCoder:coderCopy];
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
  v6.super_class = EMMessageFlagChangeAllAction;
  [(EMMessageFlagChangeAction *)&v6 encodeWithCoder:coderCopy];
  mailboxObjectIDs = [(EMMessageFlagChangeAllAction *)self mailboxObjectIDs];
  [coderCopy encodeObject:mailboxObjectIDs forKey:@"EFPropertyKey_mailboxObjectIDs"];
}

@end