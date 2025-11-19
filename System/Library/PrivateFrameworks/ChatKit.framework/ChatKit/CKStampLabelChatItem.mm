@interface CKStampLabelChatItem
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
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

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = v8;
  if (a4)
  {
    [v8 transcriptBoldTextAlignmentInsets];
    a4->top = v10;
    a4->left = v11;
    a4->bottom = v12;
    a4->right = v13;
  }

  if ([v9 isAccessibilityPreferredContentSizeCategory])
  {
    v14 = [(objc_class *)[(CKStampLabelChatItem *)self cellClass] createStampLabelView];
    v15 = [(CKChatItem *)self transcriptText];
    [v14 setAttributedText:v15];

    [v14 sizeThatFits:{width, height}];
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