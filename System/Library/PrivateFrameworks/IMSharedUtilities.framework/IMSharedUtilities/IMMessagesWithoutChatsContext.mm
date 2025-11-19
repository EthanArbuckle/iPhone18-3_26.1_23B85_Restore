@interface IMMessagesWithoutChatsContext
- (float)percentMissing;
@end

@implementation IMMessagesWithoutChatsContext

- (float)percentMissing
{
  v2 = self;
  v3 = [(IMMessagesWithoutChatsContext *)v2 missingMessagesCount];
  v4 = [(IMMessagesWithoutChatsContext *)v2 totalMessagesCount];

  return (v3 / v4) * 100.0;
}

@end