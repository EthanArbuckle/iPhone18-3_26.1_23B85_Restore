@interface NSBundle(ConversationKit)
+ (uint64_t)conversationKit;
@end

@implementation NSBundle(ConversationKit)

+ (uint64_t)conversationKit
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

@end