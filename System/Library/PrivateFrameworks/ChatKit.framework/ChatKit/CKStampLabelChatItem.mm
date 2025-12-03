@interface CKStampLabelChatItem
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (Class)cellClass;
@end

@implementation CKStampLabelChatItem

- (Class)cellClass
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 isAccessibilityPreferredContentSizeCategory];
  v3 = objc_opt_class();

  return v3;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = v8;
  if (insets)
  {
    [v8 transcriptBoldTextAlignmentInsets];
    insets->top = v10;
    insets->left = v11;
    insets->bottom = v12;
    insets->right = v13;
  }

  if ([v9 isAccessibilityPreferredContentSizeCategory])
  {
    createStampLabelView = [(objc_class *)[(CKStampLabelChatItem *)self cellClass] createStampLabelView];
    transcriptText = [(CKChatItem *)self transcriptText];
    [createStampLabelView setAttributedText:transcriptText];

    [createStampLabelView sizeThatFits:{width, height}];
    v17 = v16;
  }

  else
  {
    [v9 transcriptBoldTextHeight];
    v17 = v18;
  }

  v19 = 0.0;
  v20 = v17;
  result.height = v20;
  result.width = v19;
  return result;
}

@end