@interface EMSenderBlockingAction
- (EMSenderBlockingAction)initWithCoder:(id)coder;
- (EMSenderBlockingAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor blockSender:(BOOL)sender;
- (int64_t)signpostType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMSenderBlockingAction

- (EMSenderBlockingAction)initWithMessageListItems:(id)items origin:(int64_t)origin actor:(int64_t)actor blockSender:(BOOL)sender
{
  v8.receiver = self;
  v8.super_class = EMSenderBlockingAction;
  result = [(EMMessageChangeAction *)&v8 initWithMessageListItems:items origin:origin actor:actor];
  if (result)
  {
    result->_blockSender = sender;
  }

  return result;
}

- (int64_t)signpostType
{
  if (self->_blockSender)
  {
    return 11;
  }

  else
  {
    return 12;
  }
}

- (EMSenderBlockingAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = EMSenderBlockingAction;
  v5 = [(EMMessageChangeAction *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_blockSender = [coderCopy decodeBoolForKey:@"EFPropertyKey_blockSender"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = EMSenderBlockingAction;
  [(EMMessageChangeAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[EMSenderBlockingAction blockSender](self forKey:{"blockSender"), @"EFPropertyKey_blockSender"}];
}

@end