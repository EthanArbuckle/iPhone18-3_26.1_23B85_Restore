@interface EMMessageTransferAction
- (EMMessageTransferAction)initWithCoder:(id)coder;
- (EMMessageTransferAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor destinationMailbox:(id)mailbox copyMessages:(BOOL)messages;
- (EMMessageTransferAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor specialDestinationMailboxType:(int64_t)type flagChange:(id)change copyMessages:(BOOL)messages;
- (EMMessageTransferAction)initWithObjectIDs:(id)ds origin:(int64_t)origin actor:(int64_t)actor specialDestinationMailboxType:(int64_t)type flagChange:(id)change copyMessages:(BOOL)messages;
- (EMMessageTransferAction)initWithQuery:(id)query origin:(int64_t)origin actor:(int64_t)actor specialDestinationMailboxType:(int64_t)type flagChange:(id)change copyMessages:(BOOL)messages;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMessageTransferAction

- (EMMessageTransferAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor destinationMailbox:(id)mailbox copyMessages:(BOOL)messages
{
  itemsCopy = items;
  mailboxCopy = mailbox;
  v19.receiver = self;
  v19.super_class = EMMessageTransferAction;
  v14 = [(EMMessageChangeAction *)&v19 initWithMessageListItems:itemsCopy origin:origin actor:actor];
  if (v14)
  {
    objectID = [mailboxCopy objectID];
    v16 = [objectID url];
    destinationMailboxURL = v14->_destinationMailboxURL;
    v14->_destinationMailboxURL = v16;

    v14->_copyMessages = messages;
  }

  return v14;
}

- (EMMessageTransferAction)initWithQuery:(id)query origin:(int64_t)origin actor:(int64_t)actor specialDestinationMailboxType:(int64_t)type flagChange:(id)change copyMessages:(BOOL)messages
{
  changeCopy = change;
  v19.receiver = self;
  v19.super_class = EMMessageTransferAction;
  v16 = [(EMMessageChangeAction *)&v19 initWithQuery:query origin:origin actor:actor];
  v17 = v16;
  if (v16)
  {
    v16->_specialDestinationMailboxType = type;
    v16->_copyMessages = messages;
    objc_storeStrong(&v16->_flagChange, change);
  }

  return v17;
}

- (EMMessageTransferAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor specialDestinationMailboxType:(int64_t)type flagChange:(id)change copyMessages:(BOOL)messages
{
  changeCopy = change;
  v19.receiver = self;
  v19.super_class = EMMessageTransferAction;
  v16 = [(EMMessageChangeAction *)&v19 initWithMessageListItems:items origin:origin actor:actor];
  v17 = v16;
  if (v16)
  {
    v16->_specialDestinationMailboxType = type;
    v16->_copyMessages = messages;
    objc_storeStrong(&v16->_flagChange, change);
  }

  return v17;
}

- (EMMessageTransferAction)initWithObjectIDs:(id)ds origin:(int64_t)origin actor:(int64_t)actor specialDestinationMailboxType:(int64_t)type flagChange:(id)change copyMessages:(BOOL)messages
{
  changeCopy = change;
  v19.receiver = self;
  v19.super_class = EMMessageTransferAction;
  v16 = [(EMMessageChangeAction *)&v19 initWithObjectIDs:ds origin:origin actor:actor];
  v17 = v16;
  if (v16)
  {
    v16->_specialDestinationMailboxType = type;
    v16->_copyMessages = messages;
    objc_storeStrong(&v16->_flagChange, change);
  }

  return v17;
}

- (EMMessageTransferAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = EMMessageTransferAction;
  v5 = [(EMMessageChangeAction *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_destinationMailboxURL"];
    destinationMailboxURL = v5->_destinationMailboxURL;
    v5->_destinationMailboxURL = v6;

    v5->_specialDestinationMailboxType = [coderCopy decodeIntegerForKey:@"EFPropertyKey_specialDestinationMailboxType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_flagChange"];
    flagChange = v5->_flagChange;
    v5->_flagChange = v8;

    v5->_copyMessages = [coderCopy decodeBoolForKey:@"EFPropertyKey_copyMessages"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = EMMessageTransferAction;
  [(EMMessageChangeAction *)&v7 encodeWithCoder:coderCopy];
  destinationMailboxURL = [(EMMessageTransferAction *)self destinationMailboxURL];
  [coderCopy encodeObject:destinationMailboxURL forKey:@"EFPropertyKey_destinationMailboxURL"];

  [coderCopy encodeInteger:-[EMMessageTransferAction specialDestinationMailboxType](self forKey:{"specialDestinationMailboxType"), @"EFPropertyKey_specialDestinationMailboxType"}];
  flagChange = [(EMMessageTransferAction *)self flagChange];
  [coderCopy encodeObject:flagChange forKey:@"EFPropertyKey_flagChange"];

  [coderCopy encodeBool:-[EMMessageTransferAction copyMessages](self forKey:{"copyMessages"), @"EFPropertyKey_copyMessages"}];
}

@end