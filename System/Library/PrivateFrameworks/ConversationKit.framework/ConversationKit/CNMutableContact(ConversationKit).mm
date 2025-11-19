@interface CNMutableContact(ConversationKit)
- (uint64_t)initWithConversationMember:()ConversationKit;
- (uint64_t)initWithHandle:()ConversationKit;
@end

@implementation CNMutableContact(ConversationKit)

- (uint64_t)initWithConversationMember:()ConversationKit
{
  v4 = MEMORY[0x1E695CF18];
  v5 = a3;
  v6 = [[v4 alloc] _initWithConversationMember:v5];

  return v6;
}

- (uint64_t)initWithHandle:()ConversationKit
{
  v4 = MEMORY[0x1E695CF18];
  v5 = a3;
  v6 = [[v4 alloc] _initWithHandle:v5];

  return v6;
}

@end