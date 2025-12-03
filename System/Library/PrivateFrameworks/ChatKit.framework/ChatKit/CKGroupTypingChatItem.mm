@interface CKGroupTypingChatItem
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
@end

@implementation CKGroupTypingChatItem

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  v11.receiver = self;
  v11.super_class = CKGroupTypingChatItem;
  [(CKTypingChatItem *)&v11 loadSizeThatFits:insets textAlignmentInsets:fits.width, fits.height];
  v5 = v4;
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 transcriptGroupTypingContactImageDiameter];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end