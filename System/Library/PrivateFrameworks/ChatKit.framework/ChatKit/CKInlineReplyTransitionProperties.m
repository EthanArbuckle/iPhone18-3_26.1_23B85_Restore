@interface CKInlineReplyTransitionProperties
+ (id)defaultProperties;
- (CGPoint)swipeVelocity;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CKInlineReplyTransitionProperties

+ (id)defaultProperties
{
  v2 = objc_alloc_init(CKInlineReplyTransitionProperties);
  [(CKInlineReplyTransitionProperties *)v2 setInitialBalloonOffsetX:0.0];
  v3 = MEMORY[0x1E695E0F0];
  [(CKInlineReplyTransitionProperties *)v2 setChatItemGUIDs:MEMORY[0x1E695E0F0]];
  [(CKInlineReplyTransitionProperties *)v2 setAssociatedChatItemGUIDs:v3];
  [(CKInlineReplyTransitionProperties *)v2 setSwipeVelocity:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CKInlineReplyTransitionProperties);
  [(CKInlineReplyTransitionProperties *)self initialBalloonOffsetX];
  [(CKInlineReplyTransitionProperties *)v4 setInitialBalloonOffsetX:?];
  v5 = [(CKInlineReplyTransitionProperties *)self chatItemGUIDs];
  v6 = [v5 copy];
  [(CKInlineReplyTransitionProperties *)v4 setChatItemGUIDs:v6];

  v7 = [(CKInlineReplyTransitionProperties *)self associatedChatItemGUIDs];
  v8 = [v7 copy];
  [(CKInlineReplyTransitionProperties *)v4 setAssociatedChatItemGUIDs:v8];

  [(CKInlineReplyTransitionProperties *)self swipeVelocity];
  [(CKInlineReplyTransitionProperties *)v4 setSwipeVelocity:?];
  return v4;
}

- (CGPoint)swipeVelocity
{
  x = self->_swipeVelocity.x;
  y = self->_swipeVelocity.y;
  result.y = y;
  result.x = x;
  return result;
}

@end