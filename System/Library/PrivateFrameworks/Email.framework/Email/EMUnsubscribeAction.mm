@interface EMUnsubscribeAction
- (EMUnsubscribeAction)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMUnsubscribeAction

- (EMUnsubscribeAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = EMUnsubscribeAction;
  v5 = [(EMMessageChangeAction *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_shouldStopDeletingMessages = [coderCopy decodeBoolForKey:@"EFPropertyKey_shouldStopDeletingMessages"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = EMUnsubscribeAction;
  [(EMMessageChangeAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[EMUnsubscribeAction shouldStopDeletingMessages](self forKey:{"shouldStopDeletingMessages"), @"EFPropertyKey_shouldStopDeletingMessages"}];
}

@end