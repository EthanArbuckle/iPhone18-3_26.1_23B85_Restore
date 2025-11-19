@interface IMItemChatContext
- (void)dealloc;
@end

@implementation IMItemChatContext

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IMItemChatContext;
  [(IMItemChatContext *)&v2 dealloc];
}

@end