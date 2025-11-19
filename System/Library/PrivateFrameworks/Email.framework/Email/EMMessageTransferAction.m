@interface EMMessageTransferAction
- (EMMessageTransferAction)initWithCoder:(id)a3;
- (EMMessageTransferAction)initWithMessageListItems:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 destinationMailbox:(id)a6 copyMessages:(BOOL)a7;
- (EMMessageTransferAction)initWithMessageListItems:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 specialDestinationMailboxType:(int64_t)a6 flagChange:(id)a7 copyMessages:(BOOL)a8;
- (EMMessageTransferAction)initWithObjectIDs:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 specialDestinationMailboxType:(int64_t)a6 flagChange:(id)a7 copyMessages:(BOOL)a8;
- (EMMessageTransferAction)initWithQuery:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 specialDestinationMailboxType:(int64_t)a6 flagChange:(id)a7 copyMessages:(BOOL)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMMessageTransferAction

- (EMMessageTransferAction)initWithMessageListItems:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 destinationMailbox:(id)a6 copyMessages:(BOOL)a7
{
  v12 = a3;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = EMMessageTransferAction;
  v14 = [(EMMessageChangeAction *)&v19 initWithMessageListItems:v12 origin:a4 actor:a5];
  if (v14)
  {
    v15 = [v13 objectID];
    v16 = [v15 url];
    destinationMailboxURL = v14->_destinationMailboxURL;
    v14->_destinationMailboxURL = v16;

    v14->_copyMessages = a7;
  }

  return v14;
}

- (EMMessageTransferAction)initWithQuery:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 specialDestinationMailboxType:(int64_t)a6 flagChange:(id)a7 copyMessages:(BOOL)a8
{
  v15 = a7;
  v19.receiver = self;
  v19.super_class = EMMessageTransferAction;
  v16 = [(EMMessageChangeAction *)&v19 initWithQuery:a3 origin:a4 actor:a5];
  v17 = v16;
  if (v16)
  {
    v16->_specialDestinationMailboxType = a6;
    v16->_copyMessages = a8;
    objc_storeStrong(&v16->_flagChange, a7);
  }

  return v17;
}

- (EMMessageTransferAction)initWithMessageListItems:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 specialDestinationMailboxType:(int64_t)a6 flagChange:(id)a7 copyMessages:(BOOL)a8
{
  v15 = a7;
  v19.receiver = self;
  v19.super_class = EMMessageTransferAction;
  v16 = [(EMMessageChangeAction *)&v19 initWithMessageListItems:a3 origin:a4 actor:a5];
  v17 = v16;
  if (v16)
  {
    v16->_specialDestinationMailboxType = a6;
    v16->_copyMessages = a8;
    objc_storeStrong(&v16->_flagChange, a7);
  }

  return v17;
}

- (EMMessageTransferAction)initWithObjectIDs:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 specialDestinationMailboxType:(int64_t)a6 flagChange:(id)a7 copyMessages:(BOOL)a8
{
  v15 = a7;
  v19.receiver = self;
  v19.super_class = EMMessageTransferAction;
  v16 = [(EMMessageChangeAction *)&v19 initWithObjectIDs:a3 origin:a4 actor:a5];
  v17 = v16;
  if (v16)
  {
    v16->_specialDestinationMailboxType = a6;
    v16->_copyMessages = a8;
    objc_storeStrong(&v16->_flagChange, a7);
  }

  return v17;
}

- (EMMessageTransferAction)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EMMessageTransferAction;
  v5 = [(EMMessageChangeAction *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_destinationMailboxURL"];
    destinationMailboxURL = v5->_destinationMailboxURL;
    v5->_destinationMailboxURL = v6;

    v5->_specialDestinationMailboxType = [v4 decodeIntegerForKey:@"EFPropertyKey_specialDestinationMailboxType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_flagChange"];
    flagChange = v5->_flagChange;
    v5->_flagChange = v8;

    v5->_copyMessages = [v4 decodeBoolForKey:@"EFPropertyKey_copyMessages"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = EMMessageTransferAction;
  [(EMMessageChangeAction *)&v7 encodeWithCoder:v4];
  v5 = [(EMMessageTransferAction *)self destinationMailboxURL];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_destinationMailboxURL"];

  [v4 encodeInteger:-[EMMessageTransferAction specialDestinationMailboxType](self forKey:{"specialDestinationMailboxType"), @"EFPropertyKey_specialDestinationMailboxType"}];
  v6 = [(EMMessageTransferAction *)self flagChange];
  [v4 encodeObject:v6 forKey:@"EFPropertyKey_flagChange"];

  [v4 encodeBool:-[EMMessageTransferAction copyMessages](self forKey:{"copyMessages"), @"EFPropertyKey_copyMessages"}];
}

@end