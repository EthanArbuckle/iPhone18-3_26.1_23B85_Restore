@interface EMMessageTransferAllAction
- (EMMessageTransferAllAction)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMessageTransferAllAction

id __141__EMMessageTransferAllAction_initWithMailboxes_messageListItemsToExclude_specialDestinationMailboxType_flagChange_copyMessages_origin_actor___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectID];

  return v2;
}

- (EMMessageTransferAllAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = EMMessageTransferAllAction;
  v5 = [(EMMessageTransferAction *)&v12 initWithCoder:coderCopy];
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
  v6.super_class = EMMessageTransferAllAction;
  [(EMMessageTransferAction *)&v6 encodeWithCoder:coderCopy];
  mailboxObjectIDs = [(EMMessageTransferAllAction *)self mailboxObjectIDs];
  [coderCopy encodeObject:mailboxObjectIDs forKey:@"EFPropertyKey_mailboxObjectIDs"];
}

@end