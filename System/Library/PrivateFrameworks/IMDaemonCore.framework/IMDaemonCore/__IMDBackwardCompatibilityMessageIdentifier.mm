@interface __IMDBackwardCompatibilityMessageIdentifier
- (BOOL)isIgnorableBackwardCompatibilityMessage:(id)message inChat:(id)chat;
@end

@implementation __IMDBackwardCompatibilityMessageIdentifier

- (BOOL)isIgnorableBackwardCompatibilityMessage:(id)message inChat:(id)chat
{
  messageCopy = message;
  chatCopy = chat;
  selfCopy = self;
  sub_22B6FD3F0(messageCopy, chatCopy);
  v10 = v9;

  return v10 & 1;
}

@end