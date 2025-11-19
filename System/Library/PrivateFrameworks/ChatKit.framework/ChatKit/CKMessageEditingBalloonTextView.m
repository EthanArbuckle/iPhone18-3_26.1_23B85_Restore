@interface CKMessageEditingBalloonTextView
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 isSingleLine:(BOOL *)a5;
- (CKBalloonTextViewInteractionDelegate)interactionDelegate;
@end

@implementation CKMessageEditingBalloonTextView

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 isSingleLine:(BOOL *)a5
{
  height = a3.height;
  width = a3.width;
  v10 = [(CKMessageEditingBalloonTextView *)self attributedText];
  if (![v10 length])
  {
    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    v12 = [(CKMessageEditingBalloonTextView *)self typingAttributes];
    v13 = [v11 initWithString:@"A" attributes:v12];

    v10 = v13;
  }

  v14 = [(CKMessageEditingBalloonTextView *)self textContainer];
  [(CKMessageEditingBalloonTextView *)self textContainerInset];
  +[CKBalloonTextView sizeThatFits:attributedText:maximumNumberOfLines:lineBreakMode:textContainerInsets:outTextAlignmentInsets:outIsSingleLine:](CKBalloonTextView, "sizeThatFits:attributedText:maximumNumberOfLines:lineBreakMode:textContainerInsets:outTextAlignmentInsets:outIsSingleLine:", v10, [v14 maximumNumberOfLines], objc_msgSend(v14, "lineBreakMode"), a4, a5, width, height, v15, v16, v17, v18);
  v20 = v19;
  v22 = v21;

  v23 = v20;
  v24 = v22;
  result.height = v24;
  result.width = v23;
  return result;
}

- (CKBalloonTextViewInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

@end