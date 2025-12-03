@interface IMMessagesWithoutChatsContext
- (float)percentMissing;
@end

@implementation IMMessagesWithoutChatsContext

- (float)percentMissing
{
  selfCopy = self;
  missingMessagesCount = [(IMMessagesWithoutChatsContext *)selfCopy missingMessagesCount];
  totalMessagesCount = [(IMMessagesWithoutChatsContext *)selfCopy totalMessagesCount];

  return (missingMessagesCount / totalMessagesCount) * 100.0;
}

@end