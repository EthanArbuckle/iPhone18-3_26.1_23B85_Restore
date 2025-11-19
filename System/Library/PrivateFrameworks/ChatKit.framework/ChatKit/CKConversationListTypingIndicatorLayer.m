@interface CKConversationListTypingIndicatorLayer
- (id)defaultBubbleColor;
- (id)defaultThinkingDotColor;
@end

@implementation CKConversationListTypingIndicatorLayer

- (id)defaultBubbleColor
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 theme];
  v4 = [v3 unselectedConversationListTypingIndicatorBubbleColor];

  return v4;
}

- (id)defaultThinkingDotColor
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 theme];
  v4 = [v3 unselectedConversationListTypingIndicatorDotColor];

  return v4;
}

@end