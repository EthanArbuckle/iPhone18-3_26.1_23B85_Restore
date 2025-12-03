@interface CKConversationListTypingIndicatorLayer
- (id)defaultBubbleColor;
- (id)defaultThinkingDotColor;
@end

@implementation CKConversationListTypingIndicatorLayer

- (id)defaultBubbleColor
{
  v2 = +[CKUIBehavior sharedBehaviors];
  theme = [v2 theme];
  unselectedConversationListTypingIndicatorBubbleColor = [theme unselectedConversationListTypingIndicatorBubbleColor];

  return unselectedConversationListTypingIndicatorBubbleColor;
}

- (id)defaultThinkingDotColor
{
  v2 = +[CKUIBehavior sharedBehaviors];
  theme = [v2 theme];
  unselectedConversationListTypingIndicatorDotColor = [theme unselectedConversationListTypingIndicatorDotColor];

  return unselectedConversationListTypingIndicatorDotColor;
}

@end