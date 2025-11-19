@interface EMUnsubscribeAction
- (EMUnsubscribeAction)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMUnsubscribeAction

- (EMUnsubscribeAction)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = EMUnsubscribeAction;
  v5 = [(EMMessageChangeAction *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_shouldStopDeletingMessages = [v4 decodeBoolForKey:@"EFPropertyKey_shouldStopDeletingMessages"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = EMUnsubscribeAction;
  [(EMMessageChangeAction *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[EMUnsubscribeAction shouldStopDeletingMessages](self forKey:{"shouldStopDeletingMessages"), @"EFPropertyKey_shouldStopDeletingMessages"}];
}

@end