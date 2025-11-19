@interface EMSenderBlockingAction
- (EMSenderBlockingAction)initWithCoder:(id)a3;
- (EMSenderBlockingAction)initWithMessageListItems:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 blockSender:(BOOL)a6;
- (int64_t)signpostType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMSenderBlockingAction

- (EMSenderBlockingAction)initWithMessageListItems:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 blockSender:(BOOL)a6
{
  v8.receiver = self;
  v8.super_class = EMSenderBlockingAction;
  result = [(EMMessageChangeAction *)&v8 initWithMessageListItems:a3 origin:a4 actor:a5];
  if (result)
  {
    result->_blockSender = a6;
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

- (EMSenderBlockingAction)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = EMSenderBlockingAction;
  v5 = [(EMMessageChangeAction *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_blockSender = [v4 decodeBoolForKey:@"EFPropertyKey_blockSender"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = EMSenderBlockingAction;
  [(EMMessageChangeAction *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[EMSenderBlockingAction blockSender](self forKey:{"blockSender"), @"EFPropertyKey_blockSender"}];
}

@end