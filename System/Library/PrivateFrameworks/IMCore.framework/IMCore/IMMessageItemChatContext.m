@interface IMMessageItemChatContext
- (void)dealloc;
@end

@implementation IMMessageItemChatContext

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IMMessageItemChatContext;
  [(IMItemChatContext *)&v2 dealloc];
}

@end