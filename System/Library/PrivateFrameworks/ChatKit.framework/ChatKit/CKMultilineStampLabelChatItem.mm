@interface CKMultilineStampLabelChatItem
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
@end

@implementation CKMultilineStampLabelChatItem

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  if (insets)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 transcriptBoldTextAlignmentInsets];
    insets->top = v9;
    insets->left = v10;
    insets->bottom = v11;
    insets->right = v12;
  }

  v13 = +[CKChatItemSizeCache sharedInstance];
  v30 = *MEMORY[0x1E695F060];
  if ([v13 cachedSizeForChatItem:self size:&v30 textAlignmentInsets:0 fittingSize:{width, height}])
  {
    v15 = *(&v30 + 1);
    v14 = *&v30;
  }

  else
  {
    [(CKStampChatItem *)self contentInsets];
    v18 = width - (v16 + v17);
    v21 = height - (v19 + v20);
    transcriptText = [(CKChatItem *)self transcriptText];
    [transcriptText boundingRectWithSize:1 options:0 context:{v18, v21}];
    v24 = v23;
    v26 = v25;
    if (CKMainScreenScale_once_87 != -1)
    {
      [CKMultilineStampLabelChatItem loadSizeThatFits:textAlignmentInsets:];
    }

    v27 = *&CKMainScreenScale_sMainScreenScale_87;
    if (*&CKMainScreenScale_sMainScreenScale_87 == 0.0)
    {
      v27 = 1.0;
    }

    v14 = ceil(v24 * v27) / v27;
    v15 = ceil(v26 * v27) / v27;

    [v13 setCachedSizeForChatItem:self size:v14 textAlignmentInsets:v15 fittingSize:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), width, height}];
  }

  v28 = v14;
  v29 = v15;
  result.height = v29;
  result.width = v28;
  return result;
}

@end