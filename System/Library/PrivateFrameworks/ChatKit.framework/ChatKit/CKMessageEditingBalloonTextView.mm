@interface CKMessageEditingBalloonTextView
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets isSingleLine:(BOOL *)line;
- (CKBalloonTextViewInteractionDelegate)interactionDelegate;
@end

@implementation CKMessageEditingBalloonTextView

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets isSingleLine:(BOOL *)line
{
  height = fits.height;
  width = fits.width;
  attributedText = [(CKMessageEditingBalloonTextView *)self attributedText];
  if (![attributedText length])
  {
    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    typingAttributes = [(CKMessageEditingBalloonTextView *)self typingAttributes];
    v13 = [v11 initWithString:@"A" attributes:typingAttributes];

    attributedText = v13;
  }

  textContainer = [(CKMessageEditingBalloonTextView *)self textContainer];
  [(CKMessageEditingBalloonTextView *)self textContainerInset];
  +[CKBalloonTextView sizeThatFits:attributedText:maximumNumberOfLines:lineBreakMode:textContainerInsets:outTextAlignmentInsets:outIsSingleLine:](CKBalloonTextView, "sizeThatFits:attributedText:maximumNumberOfLines:lineBreakMode:textContainerInsets:outTextAlignmentInsets:outIsSingleLine:", attributedText, [textContainer maximumNumberOfLines], objc_msgSend(textContainer, "lineBreakMode"), insets, line, width, height, v15, v16, v17, v18);
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